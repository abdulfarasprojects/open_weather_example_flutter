// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'historical_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HistoricalWeatherData _$HistoricalWeatherDataFromJson(
    Map<String, dynamic> json) {
  return _HistoricalWeatherData.fromJson(json);
}

/// @nodoc
mixin _$HistoricalWeatherData {
  int get dt => throw _privateConstructorUsedError;
  int? get sunrise => throw _privateConstructorUsedError;
  int? get sunset => throw _privateConstructorUsedError;
  double get temp => throw _privateConstructorUsedError;
  double get feelsLike => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  double get dewPoint => throw _privateConstructorUsedError;
  double get uvi => throw _privateConstructorUsedError;
  int get clouds => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  double get windSpeed => throw _privateConstructorUsedError;
  double? get windGust => throw _privateConstructorUsedError;
  int get windDeg => throw _privateConstructorUsedError;
  List<WeatherInfo> get weather => throw _privateConstructorUsedError;
  Map<String, dynamic>? get rain => throw _privateConstructorUsedError;
  Map<String, dynamic>? get snow => throw _privateConstructorUsedError;

  /// Serializes this HistoricalWeatherData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoricalWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoricalWeatherDataCopyWith<HistoricalWeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoricalWeatherDataCopyWith<$Res> {
  factory $HistoricalWeatherDataCopyWith(HistoricalWeatherData value,
          $Res Function(HistoricalWeatherData) then) =
      _$HistoricalWeatherDataCopyWithImpl<$Res, HistoricalWeatherData>;
  @useResult
  $Res call(
      {int dt,
      int? sunrise,
      int? sunset,
      double temp,
      double feelsLike,
      int pressure,
      int humidity,
      double dewPoint,
      double uvi,
      int clouds,
      int visibility,
      double windSpeed,
      double? windGust,
      int windDeg,
      List<WeatherInfo> weather,
      Map<String, dynamic>? rain,
      Map<String, dynamic>? snow});
}

/// @nodoc
class _$HistoricalWeatherDataCopyWithImpl<$Res,
        $Val extends HistoricalWeatherData>
    implements $HistoricalWeatherDataCopyWith<$Res> {
  _$HistoricalWeatherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoricalWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? temp = null,
    Object? feelsLike = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? dewPoint = null,
    Object? uvi = null,
    Object? clouds = null,
    Object? visibility = null,
    Object? windSpeed = null,
    Object? windGust = freezed,
    Object? windDeg = null,
    Object? weather = null,
    Object? rain = freezed,
    Object? snow = freezed,
  }) {
    return _then(_value.copyWith(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      dewPoint: null == dewPoint
          ? _value.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double,
      uvi: null == uvi
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      windGust: freezed == windGust
          ? _value.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double?,
      windDeg: null == windDeg
          ? _value.windDeg
          : windDeg // ignore: cast_nullable_to_non_nullable
              as int,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      snow: freezed == snow
          ? _value.snow
          : snow // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoricalWeatherDataImplCopyWith<$Res>
    implements $HistoricalWeatherDataCopyWith<$Res> {
  factory _$$HistoricalWeatherDataImplCopyWith(
          _$HistoricalWeatherDataImpl value,
          $Res Function(_$HistoricalWeatherDataImpl) then) =
      __$$HistoricalWeatherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int dt,
      int? sunrise,
      int? sunset,
      double temp,
      double feelsLike,
      int pressure,
      int humidity,
      double dewPoint,
      double uvi,
      int clouds,
      int visibility,
      double windSpeed,
      double? windGust,
      int windDeg,
      List<WeatherInfo> weather,
      Map<String, dynamic>? rain,
      Map<String, dynamic>? snow});
}

/// @nodoc
class __$$HistoricalWeatherDataImplCopyWithImpl<$Res>
    extends _$HistoricalWeatherDataCopyWithImpl<$Res,
        _$HistoricalWeatherDataImpl>
    implements _$$HistoricalWeatherDataImplCopyWith<$Res> {
  __$$HistoricalWeatherDataImplCopyWithImpl(_$HistoricalWeatherDataImpl _value,
      $Res Function(_$HistoricalWeatherDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoricalWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? temp = null,
    Object? feelsLike = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? dewPoint = null,
    Object? uvi = null,
    Object? clouds = null,
    Object? visibility = null,
    Object? windSpeed = null,
    Object? windGust = freezed,
    Object? windDeg = null,
    Object? weather = null,
    Object? rain = freezed,
    Object? snow = freezed,
  }) {
    return _then(_$HistoricalWeatherDataImpl(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      dewPoint: null == dewPoint
          ? _value.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double,
      uvi: null == uvi
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      windGust: freezed == windGust
          ? _value.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double?,
      windDeg: null == windDeg
          ? _value.windDeg
          : windDeg // ignore: cast_nullable_to_non_nullable
              as int,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
      rain: freezed == rain
          ? _value._rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      snow: freezed == snow
          ? _value._snow
          : snow // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoricalWeatherDataImpl implements _HistoricalWeatherData {
  _$HistoricalWeatherDataImpl(
      {required this.dt,
      this.sunrise,
      this.sunset,
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
      required final List<WeatherInfo> weather,
      final Map<String, dynamic>? rain,
      final Map<String, dynamic>? snow})
      : _weather = weather,
        _rain = rain,
        _snow = snow;

  factory _$HistoricalWeatherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoricalWeatherDataImplFromJson(json);

  @override
  final int dt;
  @override
  final int? sunrise;
  @override
  final int? sunset;
  @override
  final double temp;
  @override
  final double feelsLike;
  @override
  final int pressure;
  @override
  final int humidity;
  @override
  final double dewPoint;
  @override
  final double uvi;
  @override
  final int clouds;
  @override
  final int visibility;
  @override
  final double windSpeed;
  @override
  final double? windGust;
  @override
  final int windDeg;
  final List<WeatherInfo> _weather;
  @override
  List<WeatherInfo> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  final Map<String, dynamic>? _rain;
  @override
  Map<String, dynamic>? get rain {
    final value = _rain;
    if (value == null) return null;
    if (_rain is EqualUnmodifiableMapView) return _rain;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _snow;
  @override
  Map<String, dynamic>? get snow {
    final value = _snow;
    if (value == null) return null;
    if (_snow is EqualUnmodifiableMapView) return _snow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'HistoricalWeatherData(dt: $dt, sunrise: $sunrise, sunset: $sunset, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, uvi: $uvi, clouds: $clouds, visibility: $visibility, windSpeed: $windSpeed, windGust: $windGust, windDeg: $windDeg, weather: $weather, rain: $rain, snow: $snow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoricalWeatherDataImpl &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.dewPoint, dewPoint) ||
                other.dewPoint == dewPoint) &&
            (identical(other.uvi, uvi) || other.uvi == uvi) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windGust, windGust) ||
                other.windGust == windGust) &&
            (identical(other.windDeg, windDeg) || other.windDeg == windDeg) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            const DeepCollectionEquality().equals(other._rain, _rain) &&
            const DeepCollectionEquality().equals(other._snow, _snow));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dt,
      sunrise,
      sunset,
      temp,
      feelsLike,
      pressure,
      humidity,
      dewPoint,
      uvi,
      clouds,
      visibility,
      windSpeed,
      windGust,
      windDeg,
      const DeepCollectionEquality().hash(_weather),
      const DeepCollectionEquality().hash(_rain),
      const DeepCollectionEquality().hash(_snow));

  /// Create a copy of HistoricalWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoricalWeatherDataImplCopyWith<_$HistoricalWeatherDataImpl>
      get copyWith => __$$HistoricalWeatherDataImplCopyWithImpl<
          _$HistoricalWeatherDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoricalWeatherDataImplToJson(
      this,
    );
  }
}

abstract class _HistoricalWeatherData implements HistoricalWeatherData {
  factory _HistoricalWeatherData(
      {required final int dt,
      final int? sunrise,
      final int? sunset,
      required final double temp,
      required final double feelsLike,
      required final int pressure,
      required final int humidity,
      required final double dewPoint,
      required final double uvi,
      required final int clouds,
      required final int visibility,
      required final double windSpeed,
      final double? windGust,
      required final int windDeg,
      required final List<WeatherInfo> weather,
      final Map<String, dynamic>? rain,
      final Map<String, dynamic>? snow}) = _$HistoricalWeatherDataImpl;

  factory _HistoricalWeatherData.fromJson(Map<String, dynamic> json) =
      _$HistoricalWeatherDataImpl.fromJson;

  @override
  int get dt;
  @override
  int? get sunrise;
  @override
  int? get sunset;
  @override
  double get temp;
  @override
  double get feelsLike;
  @override
  int get pressure;
  @override
  int get humidity;
  @override
  double get dewPoint;
  @override
  double get uvi;
  @override
  int get clouds;
  @override
  int get visibility;
  @override
  double get windSpeed;
  @override
  double? get windGust;
  @override
  int get windDeg;
  @override
  List<WeatherInfo> get weather;
  @override
  Map<String, dynamic>? get rain;
  @override
  Map<String, dynamic>? get snow;

  /// Create a copy of HistoricalWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoricalWeatherDataImplCopyWith<_$HistoricalWeatherDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HistoricalWeather _$HistoricalWeatherFromJson(Map<String, dynamic> json) {
  return _HistoricalWeather.fromJson(json);
}

/// @nodoc
mixin _$HistoricalWeather {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  int get timezoneOffset => throw _privateConstructorUsedError;
  List<HistoricalWeatherData> get data => throw _privateConstructorUsedError;

  /// Serializes this HistoricalWeather to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoricalWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoricalWeatherCopyWith<HistoricalWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoricalWeatherCopyWith<$Res> {
  factory $HistoricalWeatherCopyWith(
          HistoricalWeather value, $Res Function(HistoricalWeather) then) =
      _$HistoricalWeatherCopyWithImpl<$Res, HistoricalWeather>;
  @useResult
  $Res call(
      {double lat,
      double lon,
      String timezone,
      int timezoneOffset,
      List<HistoricalWeatherData> data});
}

/// @nodoc
class _$HistoricalWeatherCopyWithImpl<$Res, $Val extends HistoricalWeather>
    implements $HistoricalWeatherCopyWith<$Res> {
  _$HistoricalWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoricalWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
    Object? timezone = null,
    Object? timezoneOffset = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneOffset: null == timezoneOffset
          ? _value.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HistoricalWeatherData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoricalWeatherImplCopyWith<$Res>
    implements $HistoricalWeatherCopyWith<$Res> {
  factory _$$HistoricalWeatherImplCopyWith(_$HistoricalWeatherImpl value,
          $Res Function(_$HistoricalWeatherImpl) then) =
      __$$HistoricalWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double lat,
      double lon,
      String timezone,
      int timezoneOffset,
      List<HistoricalWeatherData> data});
}

/// @nodoc
class __$$HistoricalWeatherImplCopyWithImpl<$Res>
    extends _$HistoricalWeatherCopyWithImpl<$Res, _$HistoricalWeatherImpl>
    implements _$$HistoricalWeatherImplCopyWith<$Res> {
  __$$HistoricalWeatherImplCopyWithImpl(_$HistoricalWeatherImpl _value,
      $Res Function(_$HistoricalWeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoricalWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
    Object? timezone = null,
    Object? timezoneOffset = null,
    Object? data = null,
  }) {
    return _then(_$HistoricalWeatherImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneOffset: null == timezoneOffset
          ? _value.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HistoricalWeatherData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoricalWeatherImpl implements _HistoricalWeather {
  _$HistoricalWeatherImpl(
      {required this.lat,
      required this.lon,
      required this.timezone,
      required this.timezoneOffset,
      required final List<HistoricalWeatherData> data})
      : _data = data;

  factory _$HistoricalWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoricalWeatherImplFromJson(json);

  @override
  final double lat;
  @override
  final double lon;
  @override
  final String timezone;
  @override
  final int timezoneOffset;
  final List<HistoricalWeatherData> _data;
  @override
  List<HistoricalWeatherData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'HistoricalWeather(lat: $lat, lon: $lon, timezone: $timezone, timezoneOffset: $timezoneOffset, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoricalWeatherImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezoneOffset, timezoneOffset) ||
                other.timezoneOffset == timezoneOffset) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lon, timezone,
      timezoneOffset, const DeepCollectionEquality().hash(_data));

  /// Create a copy of HistoricalWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoricalWeatherImplCopyWith<_$HistoricalWeatherImpl> get copyWith =>
      __$$HistoricalWeatherImplCopyWithImpl<_$HistoricalWeatherImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoricalWeatherImplToJson(
      this,
    );
  }
}

abstract class _HistoricalWeather implements HistoricalWeather {
  factory _HistoricalWeather(
          {required final double lat,
          required final double lon,
          required final String timezone,
          required final int timezoneOffset,
          required final List<HistoricalWeatherData> data}) =
      _$HistoricalWeatherImpl;

  factory _HistoricalWeather.fromJson(Map<String, dynamic> json) =
      _$HistoricalWeatherImpl.fromJson;

  @override
  double get lat;
  @override
  double get lon;
  @override
  String get timezone;
  @override
  int get timezoneOffset;
  @override
  List<HistoricalWeatherData> get data;

  /// Create a copy of HistoricalWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoricalWeatherImplCopyWith<_$HistoricalWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
