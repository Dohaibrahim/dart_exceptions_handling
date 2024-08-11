class WeatherReport {
  WeatherReport() {}
  displayWeatherInfo(Map<String, dynamic> weatherReport) {
    print("Location: ${weatherReport['location']}");
    print("Temperature: ${weatherReport['temperature']}°C");
  }
}
