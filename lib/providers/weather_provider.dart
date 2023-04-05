import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/weather_model.dart';

Future<Weather> fetchWeather(String apiKey, String cityName) async {
  final response = await http.get(Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric'));

  if (response.statusCode == 200) {
    final json = jsonDecode(response.body);
    return Weather(
      city: json['name'],
      temperature: json['main']['temp'],
      description: json['weather'][0]['description'],
    );
  } else {
    throw Exception('Failed to fetch weather data');
  }
}
