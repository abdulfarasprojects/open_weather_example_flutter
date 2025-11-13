// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historical_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoricalWeatherDataImpl _$$HistoricalWeatherDataImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoricalWeatherDataImpl(
      dt: (json['dt'] as num).toInt(),
      sunrise: (json['sunrise'] as num?)?.toInt(),
      sunset: (json['sunset'] as num?)?.toInt(),
      temp: (json['temp'] as num).toDouble(),
      feelsLike: (json['feelsLike'] as num).toDouble(),
      pressure: (json['pressure'] as num).toInt(),
      humidity: (json['humidity'] as num).toInt(),
      dewPoint: (json['dewPoint'] as num).toDouble(),
      uvi: (json['uvi'] as num).toDouble(),
      clouds: (json['clouds'] as num).toInt(),
      visibility: (json['visibility'] as num).toInt(),
      windSpeed: (json['windSpeed'] as num).toDouble(),
      windGust: (json['windGust'] as num?)?.toDouble(),
      windDeg: (json['windDeg'] as num).toInt(),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      rain: json['rain'] as Map<String, dynamic>?,
      snow: json['snow'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$HistoricalWeatherDataImplToJson(
        _$HistoricalWeatherDataImpl instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'temp': instance.temp,
      'feelsLike': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dewPoint': instance.dewPoint,
      'uvi': instance.uvi,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'windSpeed': instance.windSpeed,
      'windGust': instance.windGust,
      'windDeg': instance.windDeg,
      'weather': instance.weather,
      'rain': instance.rain,
      'snow': instance.snow,
    };

_$HistoricalWeatherImpl _$$HistoricalWeatherImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoricalWeatherImpl(
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      timezone: json['timezone'] as String,
      timezoneOffset: (json['timezoneOffset'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => HistoricalWeatherData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HistoricalWeatherImplToJson(
        _$HistoricalWeatherImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezoneOffset': instance.timezoneOffset,
      'data': instance.data,
    };
