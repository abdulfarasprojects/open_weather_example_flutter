sealed class APIException implements Exception {
  APIException(this.message);
  final String message;
}

class InvalidApiKeyException extends APIException {
  InvalidApiKeyException() : super('Invalid API key');
}

class OneCallAPIUnauthorizedException extends APIException {
  OneCallAPIUnauthorizedException() : super('One Call API 3.0 requires a paid subscription. The timemachine endpoint is not available with free API keys.');
}

class NoInternetConnectionException extends APIException {
  NoInternetConnectionException() : super('No Internet connection');
}

class CityNotFoundException extends APIException {
  CityNotFoundException() : super('City not found');
}

class UnknownException extends APIException {
  UnknownException() : super('Some error occurred');
}
