import 'dart:convert';

class WeatherParser {
  //rethrow becuase of error happens if no return found
  //The body might complete normally, causing 'null' to be returned, but the return type is a potentially non-nullable type.
  //Try adding either a return or a throw statement at the end.
  Future<Map<String, dynamic>> parseWeatherData(String rawData) async {
    await Future.delayed(Duration(seconds: 1));
    try {
      return jsonDecode(rawData);
    } on FormatException {
      print('there are no data found');
      rethrow;
    } catch (e) {
      print("failed to parse the data: $e");
      rethrow;
    }
  }
}
