import 'dart:async';
import 'weather_display.dart';
import 'weather_parser.dart';

void main() {
  runZonedGuarded(() async {
    WeatherService service = WeatherService();
    WeatherParser weatherParser = WeatherParser();
    WeatherReport weatherReporter = WeatherReport();

    try {
      String data = await service.fetchWeatherData();
      Map<String, dynamic> mapOfData =
          await weatherParser.parseWeatherData(data);
      weatherReporter.displayWeatherInfo(mapOfData);
    } catch (e) {
      print('error : $e');
    }
  }, (e, s) {
    print('Uncaught error: $e');
    print("the stack trace : $s");
  });
}

class WeatherService {
  Future<String> fetchWeatherData() async {
    await Future.delayed(Duration(seconds: 2));
    return '{"temperature": "20","location": "Egypt"}';
    //return '';
  }
}
