# Flutter Weather App Example

An example Flutter weather app using the [OpenWeatherMap API](https:### Test Evidence

Each test automatically captures screenshots as visual evidence:

- **load-weather-page.png** - Initial page load
- **search-box-interface.png** - Search interface display
- **weather-information-display.png** - Weather data display
- **before/after-new-york-search.png** - City search test evidence
- **initial-london-state.png** / **after-london-switch.png** - City switching evidence
- **forecast-display.png** / **forecast-test-complete.png** - Forecast display evidence
- **before/after-empty-input.png** - Empty input handling evidence
- **before/after-refresh.png** - Page refresh behavior evidence
- **mobile-responsive.png** - Mobile responsiveness evidence

Screenshots are saved in `test-results/screenshots/` and included in the HTML test report.rmap.org/api).

<img src="https://github.com/bizz84/open_weather_example_flutter/blob/main/.github/images/weather-forecast.png?raw=true" alt="Flutter Weather App Preview" width=50% height=50%>

## Related Tutorials

- [Flutter App Architecture: The Repository Pattern](https://codewithandrea.com/articles/flutter-repository-pattern/)

## Supported Features

- [x] Current weather (condition and temperature)
- [x] 5-day weather forecast
- [x] Search by city

## App Architecture

The app is composed by three main layers.

### Data Layer

The data layer contains a single `HttpWeatherRepository` that is used to fetch weather data from the [OpenWeatherMap API](https://openweathermap.org/api).

The data is then parsed (using Freezed) and returned using **type-safe** entity classes (`Weather` and `Forecast`).

For more info about this, read this tutorial:

- [Flutter App Architecture: The Repository Pattern](https://codewithandrea.com/articles/flutter-repository-pattern/)

For more info about the project structure, read this:

- [Flutter Project Structure: Feature-first or Layer-first?](https://codewithandrea.com/articles/flutter-project-structure/)

### Application Layer

This contains some providers that are used to fetch and cache the data from the `HttpWeatherRepository`.

```dart
// current city stored in the search box in the UI
final cityProvider = StateProvider<String>((ref) {
  return 'London';
});

// provider to fetch the current weather
final currentWeatherProvider =
    FutureProvider.autoDispose<WeatherData>((ref) async {
  final city = ref.watch(cityProvider);
  final weather =
      await ref.watch(weatherRepositoryProvider).getWeather(city: city);
  return WeatherData.from(weather);
});

// provider to fetch the hourly weather
final hourlyWeatherProvider =
    FutureProvider.autoDispose<ForecastData>((ref) async {
  final city = ref.watch(cityProvider);
  final forecast =
      await ref.watch(weatherRepositoryProvider).getForecast(city: city);
  return ForecastData.from(forecast);
});
```

### Presentation Layer

This layer holds all the widgets, which fetch the data from the `FutureProvider`s above and map the resulting `AsyncValue` objects to the appropriate UI states (data, loading, error).

## Packages in use

- [riverpod](https://pub.dev/packages/riverpod) for state management
- [freezed](https://pub.dev/packages/freezed) for code generation
- [http](https://pub.dev/packages/http) for talking to the REST API
- [cached_network_image](https://pub.dev/packages/cached_network_image) for caching images
- [mocktail](https://pub.dev/packages/mocktail) for testing

## About the OpenStreetMap weather API

The app shows data from the following endpoints:

- [Current Weather Data](https://openweathermap.org/current)
- [Weather Fields in API Response](https://openweathermap.org/current#parameter)
- [5 day weather forecast](https://openweathermap.org/forecast5)
- [Weather Conditions](https://openweathermap.org/weather-conditions)

**Note**: to use the API you'll need to register an account and obtain your own API key. This can be set via `--dart-define` or inside `lib/src/api/api_keys.dart`.

## Testing

This app includes end-to-end tests using Playwright to ensure the web version works correctly.

### Running E2E Tests

1. Make sure you have Node.js installed.
2. Install dependencies: `npm install`
3. Install Playwright browsers: `npx playwright install`
4. Run the tests: `npm test`
5. View test results and screenshots: `npm run test:report`

The tests will automatically start the Flutter web server and run tests against it.

### Test Coverage

- Loading the weather page without errors
- Checking that the app is interactive
- Displaying weather information without crashes
- Testing app behavior with different city searches (stability tests)
- Verifying forecast display for different cities
- Handling empty search inputs gracefully
- Maintaining app state on page refresh
- Responsive design on mobile devices

Note: Since Flutter web renders UI content in a canvas, the tests focus on ensuring the app loads and runs without errors rather than testing specific UI interactions. For comprehensive UI testing, consider using Flutter integration tests.