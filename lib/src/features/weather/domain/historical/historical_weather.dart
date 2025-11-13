import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_weather_example_flutter/src/features/weather/domain/weather/weather.dart';

part 'historical_weather.freezed.dart';
part 'historical_weather.g.dart';

/// Historical weather data for a specific timestamp
@freezed
class HistoricalWeatherData with _$HistoricalWeatherData {
  factory HistoricalWeatherData({
    required int dt,
    int? sunrise,
    int? sunset,
    required double temp,
    required double feelsLike,
    required int pressure,
    required int humidity,
    required double dewPoint,
    required double uvi,
    required int clouds,
    required int visibility,
    required double windSpeed,
    double? windGust,
    required int windDeg,
    required List<WeatherInfo> weather,
    Map<String, dynamic>? rain,
    Map<String, dynamic>? snow,
  }) = _HistoricalWeatherData;

  factory HistoricalWeatherData.fromJson(Map<String, dynamic> json) =>
      _$HistoricalWeatherDataFromJson(json);
}

/// Historical weather response from timemachine API
@freezed
class HistoricalWeather with _$HistoricalWeather {
  factory HistoricalWeather({
    required double lat,
    required double lon,
    required String timezone,
    required int timezoneOffset,
    required List<HistoricalWeatherData> data,
  }) = _HistoricalWeather;

  factory HistoricalWeather.fromJson(Map<String, dynamic> json) =>
      _$HistoricalWeatherFromJson(json);
}