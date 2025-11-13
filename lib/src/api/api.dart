/// Uri builder class for the OpenWeatherMap API
class OpenWeatherMapAPI {
  OpenWeatherMapAPI(this.apiKey);
  final String apiKey;

  static const String _apiBaseUrl = "api.openweathermap.org";
  static const String _apiPathV2 = "/data/2.5/";
  static const String _apiPathV3 = "/data/3.0/";

  Uri weather(String city) => _buildUri(
        endpoint: "weather",
        parametersBuilder: () => cityQueryParameters(city),
        version: _apiPathV2,
      );

  Uri forecast(String city) => _buildUri(
        endpoint: "forecast",
        parametersBuilder: () => cityQueryParameters(city),
        version: _apiPathV2,
      );

  Uri timemachine({
    required double lat,
    required double lon,
    required int dt,
    String units = 'metric',
    String? lang,
  }) =>
      _buildUri(
        endpoint: "onecall/timemachine",
        parametersBuilder: () => timemachineQueryParameters(
          lat: lat,
          lon: lon,
          dt: dt,
          units: units,
          lang: lang,
        ),
        version: _apiPathV3,
      );

  Uri _buildUri({
    required String endpoint,
    required Map<String, dynamic> Function() parametersBuilder,
    required String version,
  }) {
    return Uri(
      scheme: "https",
      host: _apiBaseUrl,
      path: "$version$endpoint",
      queryParameters: parametersBuilder(),
    );
  }

  Map<String, dynamic> cityQueryParameters(String city) => {
        "q": city,
        "appid": apiKey,
        "units": "metric",
      };

  Map<String, dynamic> timemachineQueryParameters({
    required double lat,
    required double lon,
    required int dt,
    required String units,
    String? lang,
  }) {
    final params = {
      "lat": lat.toString(),
      "lon": lon.toString(),
      "dt": dt.toString(),
      "appid": apiKey,
      "units": units,
    };
    if (lang != null) {
      params["lang"] = lang;
    }
    return params;
  }
}
