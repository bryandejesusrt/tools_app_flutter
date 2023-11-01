import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class AgePredictionTab extends StatefulWidget {
  const AgePredictionTab({super.key});

  @override
  _AgePredictionTab createState() => _AgePredictionTab();
}

class _AgePredictionTab extends State<AgePredictionTab> {
  String _name = '';
  int _age = 0;
  String status = '';

  void _getAgePrediction(String name) async {
    final uri = Uri.parse(
        'https://api.agify.io/?name=$name'); // Convierte la cadena en un objeto Uri
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        _age = data['age'] ?? 'Desconocido';
      });
    } else {
      setState(() {
        status = 'Error al obtener la edad';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
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
              decoration: InputDecoration(
                labelText: 'Nombre',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _getAgePrediction(_name);
            },
            child: Text('Obtener Edad'),
          ),
          SizedBox(height: 20),
          if (_age > 0)
            Text(
              'Edad: $_age',
              style: TextStyle(fontSize: 24),
            ),
          if (_age > 0)
            Text(
              'Estado: ${_getAgeStatus(_age)}',
              style: TextStyle(fontSize: 24),
            ),
          if (_age > 0)
            Image.asset(
              _getAgeImage(_age),
              height: 150,
            ),
        ],
      ),
    );
  }

  String _getAgeStatus(int age) {
    if (age <= 20) {
      status = 'Joven';
      return 'Joven';
    } else if (age <= 60) {
      status = 'Adulto';
      return 'Adulto';
    } else {
      status = 'Anciano';
      return 'Anciano';
    }
  }

  String _getAgeImage(int age) {
    if (status == 'Joven') {
      return 'assets/images/boy.png';
    } else if (status == 'Adulto') {
      return 'assets/images/adult.png';
    } else {
      return 'assets/images/oldman.png';
    }
  }
}
