import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherApp extends StatefulWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  String apiKey = 'c7fe3684376680471beb50748f88411f';
  String cityName = 'Santo Domingo';
  Map<String, dynamic>? weatherData;

  Future<void> fetchWeatherData() async {
    final uri = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName,do&appid=$apiKey');
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        weatherData = data;
      });
    } else {
      setState(() {
        weatherData = null;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchWeatherData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (weatherData != null)
              Text(
                'Ciudad: ${weatherData!['name']}',
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            if (weatherData != null)
              const Text(
                '🇩🇴 República Dominicana',
                style: TextStyle(fontSize: 24),
              ),
            if (weatherData != null)
              Text(
                'Descripción: ${weatherData!['weather'][0]['description']}',
                style: const TextStyle(fontSize: 20),
              ),
            if (weatherData != null)
              Text(
                'Temperatura: ${((weatherData!['main']['temp'] - 273.15).toStringAsFixed(2))}°C',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            if (weatherData != null)
              Text(
                'Sensación Térmica: ${((weatherData!['main']['feels_like'] - 273.15).toStringAsFixed(2))}°C',
                style: const TextStyle(fontSize: 20),
              ),
            if (weatherData != null)
              Text(
                'Presión: ${weatherData!['main']['pressure']} hPa',
                style: const TextStyle(fontSize: 20),
              ),
            if (weatherData != null)
              Text(
                'Humedad: ${weatherData!['main']['humidity']}%',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            if (weatherData != null)
              Text(
                'Velocidad del Viento: ${weatherData!['wind']['speed']} m/s',
                style: const TextStyle(fontSize: 20),
              ),
            if (weatherData != null)
              Text(
                'Cobertura de Nubes: ${weatherData!['clouds']['all']}%',
                style: const TextStyle(fontSize: 20),
              ),
          ],
        ),
      ),
    );
  }
}
