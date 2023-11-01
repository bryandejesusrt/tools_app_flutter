import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class GenderPredictionTab extends StatefulWidget {
  const GenderPredictionTab({super.key});

  @override
  _GenderTabState createState() => _GenderTabState();
}

class _GenderTabState extends State<GenderPredictionTab> {
  String _name = '';
  String _gender = '';
  String _genderES = '';
  String _probability = '';
  bool _showInfo = false; // Nuevo estado para controlar la visibilidad

  void _predictGender(String name) async {
    final uri = Uri.parse(
        'https://api.genderize.io/?name=$name'); // Convierte la cadena en un objeto Uri
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        _gender = data['gender'] ?? 'Desconocido';
        _probability = data['_probability'].toString();
        if (_gender == 'male') {
          _genderES = 'Masculino';
        } else {
          _genderES = 'Femenino';
        }
        _showInfo = true; // Mostrar información después de la predicción
      });
    } else {
      setState(() {
        _gender = 'Error al obtener el género';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            onChanged: (value) {
              setState(() {
                _name = value;
              });
            },
            decoration: const InputDecoration(
              labelText: 'Nombre',
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            _predictGender(_name);
          },
          child: const Text('Predecir Género'),
        ),
        const SizedBox(height: 20),
        if (_showInfo) // Mostrar información solo si _showInfo es verdadero
          Column(
            children: [
              Text('La probabilidad de que se $_genderES es de: $_probability'),
              Text(
                'Género: $_genderES',
                style: TextStyle(
                  fontSize: 24,
                  color: _gender.toLowerCase() == 'male'
                      ? Colors.blue
                      : Colors.pink,
                ),
              ),
              Image.asset(
                _gender.toLowerCase() == 'male'
                    ? 'assets/images/man.png'
                    : 'assets/images/girl.png',
                height: 150,
              ),
            ],
          ),
      ],
    );
  }
}
