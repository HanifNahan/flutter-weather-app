import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather_model.dart';

class WeatherApiClient {
  Future<Weather>? getcurrentWeather(String? location) async {
    var endPoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=2d56a9e31a7b674593c4331962e36657&units=metric");
    var response = await http.get(endPoint);
    var body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}
