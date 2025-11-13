import 'package:flutter/material.dart';
import 'package:open_weather_example_flutter/src/constants/app_colors.dart';
import 'package:open_weather_example_flutter/src/features/weather/presentation/city_search_box.dart';
import 'package:open_weather_example_flutter/src/features/weather/presentation/current_weather.dart';
import 'package:open_weather_example_flutter/src/features/weather/presentation/historical_weather.dart';
import 'package:open_weather_example_flutter/src/features/weather/presentation/hourly_weather.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key, required this.city});
  final String city;

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.rainGradient,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(),
              const CitySearchBox(),
              const Spacer(),
              TabBar(
                controller: _tabController,
                tabs: const [
                  Tab(text: 'Current'),
                  Tab(text: 'Hourly'),
                  Tab(text: 'Historical'),
                ],
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white70,
                indicatorColor: Colors.white,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    CurrentWeather(),
                    HourlyWeather(),
                    HistoricalWeather(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
