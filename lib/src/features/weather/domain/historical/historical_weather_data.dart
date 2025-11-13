import 'package:open_weather_example_flutter/src/features/weather/domain/historical/historical_weather.dart';
import 'package:open_weather_example_flutter/src/features/weather/domain/temperature.dart';

/// Derived model class used in the UI for historical weather
class HistoricalWeatherData {
  HistoricalWeatherData({
    required this.temp,
    required this.feelsLike,
    required this.pressure,
    required this.humidity,
    required this.dewPoint,
    required this.uvi,
    required this.clouds,
    required this.visibility,
    required this.windSpeed,
    this.windGust,
    required this.windDeg,
    required this.description,
    required this.icon,
    required this.date,
    this.sunrise,
    this.sunset,
    this.rain,
    this.snow,
  });

  factory HistoricalWeatherData.from(HistoricalWeather historicalWeather) {
    final data = historicalWeather.data[0]; // Timemachine returns one data point
    return HistoricalWeatherData(
      temp: Temperature.celsius(data.temp),
      feelsLike: Temperature.celsius(data.feelsLike),
      pressure: data.pressure,
      humidity: data.humidity,
      dewPoint: Temperature.celsius(data.dewPoint),
      uvi: data.uvi,
      clouds: data.clouds,
      visibility: data.visibility,
      windSpeed: data.windSpeed,
      windGust: data.windGust,
      windDeg: data.windDeg,
      description: data.weather[0].description,
      icon: data.weather[0].icon,
      date: DateTime.fromMillisecondsSinceEpoch(data.dt * 1000),
      sunrise: data.sunrise != null
          ? DateTime.fromMillisecondsSinceEpoch(data.sunrise! * 1000)
          : null,
      sunset: data.sunset != null
          ? DateTime.fromMillisecondsSinceEpoch(data.sunset! * 1000)
          : null,
      rain: data.rain,
      snow: data.snow,
    );
  }

  final Temperature temp;
  final Temperature feelsLike;
  final int pressure;
  final int humidity;
  final Temperature dewPoint;
  final double uvi;
  final int clouds;
  final int visibility;
  final double windSpeed;
  final double? windGust;
  final int windDeg;
  final String description;
  final String icon;
  final DateTime date;
  final DateTime? sunrise;
  final DateTime? sunset;
  final Map<String, dynamic>? rain;
  final Map<String, dynamic>? snow;

  String get iconUrl => "https://openweathermap.org/img/wn/$icon@2x.png";
}