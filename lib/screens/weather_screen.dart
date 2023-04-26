import 'package:flutter/material.dart';
import '../models/weather_model.dart';
import '../providers/weather_provider.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final apiKey = 'bc8f578b62357da3a828e49f1d54d1cd';
  final cityNameController = TextEditingController();
  Weather? weather;

  void getWeather() async {
    final cityName = cityNameController.text;
    final newWeather = await fetchWeather(apiKey, cityName);
    setState(() {
      weather = newWeather;
    });
  }

  Future<int> getNumber() async {
    await Future.delayed(const Duration(seconds: 2));
    return 10;
  }

  @override
  void dispose() {
    cityNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
      ),
      body: Column(
        children: [
          TextField(
            controller: cityNameController,
            decoration: const InputDecoration(
              hintText: 'Enter city name',
            ),
          ),
          ElevatedButton(
            onPressed: getWeather,
            child: const Text('Get Weather'),
          ),
          if (weather != null)
            Column(
              children: [
                Text('City: ${weather!.city}'),
                Text('Temperature: ${weather!.temperature}°C'),
                Text('Description: ${weather!.description}'),
              ],
            ),
          FutureBuilder(
            future: getNumber(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text('Number: ${snapshot.data}');
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return const CircularProgressIndicator();
              }
            },
          )
        ],
      ),
    );
  }
}
