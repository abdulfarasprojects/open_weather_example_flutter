import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:open_weather_example_flutter/src/features/weather/application/providers.dart';
import 'package:open_weather_example_flutter/src/features/weather/data/api_exception.dart';
import 'package:open_weather_example_flutter/src/features/weather/domain/historical/historical_weather_data.dart';
import 'package:open_weather_example_flutter/src/features/weather/presentation/weather_icon_image.dart';

class HistoricalWeather extends ConsumerStatefulWidget {
  const HistoricalWeather({super.key});

  @override
  ConsumerState<HistoricalWeather> createState() => _HistoricalWeatherState();
}

class _HistoricalWeatherState extends ConsumerState<HistoricalWeather> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1979, 1, 1),
      lastDate: DateTime.now().add(const Duration(days: 4)),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentWeatherAsync = ref.watch(currentWeatherProvider);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Select Date & Time for Historical Weather',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => _selectDate(context),
                    child: Text(
                      _selectedDate != null
                          ? DateFormat('yyyy-MM-dd').format(_selectedDate!)
                          : 'Select Date',
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () => _selectTime(context),
                    child: Text(
                      _selectedTime != null
                          ? _selectedTime!.format(context)
                          : 'Select Time',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        if (_selectedDate != null && _selectedTime != null)
          currentWeatherAsync.when(
            data: (currentWeather) {
              // Use current location's lat/lon for historical query
              final dt = DateTime(
                _selectedDate!.year,
                _selectedDate!.month,
                _selectedDate!.day,
                _selectedTime!.hour,
                _selectedTime!.minute,
              ).millisecondsSinceEpoch ~/ 1000;

              final historicalAsync = ref.watch(
                historicalWeatherProvider(
                  (
                    lat: currentWeather.coord.lat,
                    lon: currentWeather.coord.lon,
                    dt: dt,
                  ),
                ),
              );

              return historicalAsync.when(
                data: (data) => HistoricalWeatherContents(data: data),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (e, __) {
                  final errorMessage = e is APIException ? e.message : 'An error occurred';
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        errorMessage,
                        style: const TextStyle(color: Colors.white, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, __) => Text('Error loading current weather: $e'),
          )
        else
          const Text(
            'Please select both date and time',
            style: TextStyle(color: Colors.white70),
          ),
      ],
    );
  }
}

class HistoricalWeatherContents extends StatelessWidget {
  const HistoricalWeatherContents({super.key, required this.data});
  final HistoricalWeatherData data;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Historical Weather',
          style: textTheme.headlineSmall,
        ),
        const SizedBox(height: 16),
        WeatherIconImage(iconUrl: data.iconUrl, size: 120),
        Text(
          '${data.temp.celsius.toInt()}°',
          style: textTheme.displayMedium,
        ),
        Text(
          data.description,
          style: textTheme.bodyLarge,
        ),
        const SizedBox(height: 16),
        Text(
          'Feels like: ${data.feelsLike.celsius.toInt()}°',
          style: textTheme.bodyMedium,
        ),
        Text(
          'Humidity: ${data.humidity}%',
          style: textTheme.bodyMedium,
        ),
        Text(
          'Pressure: ${data.pressure} hPa',
          style: textTheme.bodyMedium,
        ),
        Text(
          'Wind: ${data.windSpeed} m/s',
          style: textTheme.bodyMedium,
        ),
        if (data.sunrise != null && data.sunset != null) ...[
          Text(
            'Sunrise: ${DateFormat('HH:mm').format(data.sunrise!)}',
            style: textTheme.bodyMedium,
          ),
          Text(
            'Sunset: ${DateFormat('HH:mm').format(data.sunset!)}',
            style: textTheme.bodyMedium,
          ),
        ],
      ],
    );
  }
}