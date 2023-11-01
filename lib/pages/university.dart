import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// import 'package:url_launcher/url_launcher.dart';

class UniversityTab extends StatefulWidget {
  const UniversityTab({super.key});

  @override
  _UniversityTab createState() => _UniversityTab();
}

class _UniversityTab extends State<UniversityTab> {
  String countryName = '';
  List universities = [];

  Future<void> fetchUniversities(String country) async {
    final uri =
        Uri.parse('http://universities.hipolabs.com/search?country=$country');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        universities = data;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            onChanged: (value) {
              countryName = value;
            },
            decoration: const InputDecoration(
              labelText: 'Nombre del País',
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            fetchUniversities(countryName);
          },
          child: const Text('Buscar Universidades'),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: universities.length,
            itemBuilder: (context, index) {
              return _buildUniversityCard(universities[index]);
            },
          ),
        ),
      ],
    ));
  }

  Widget _buildUniversityCard(Map university) {
    final domains = university['domains'] as List;

    return Card(
      color: Colors.white,
      margin: const EdgeInsets.all(8),
      elevation: 4,
      child: Column(
        children: [
          ListTile(
            title: Text(
              university['name'],
              style: const TextStyle(
                fontWeight: FontWeight.bold, // Aplica un estilo al nombre
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              university['country'],
              style: const TextStyle(
                fontStyle: FontStyle.italic, // Aplica un estilo al país
                fontSize: 16,
              ),
            ),
            trailing: Text(
              domains.isNotEmpty ? domains[0] : '',
              style: const TextStyle(
                fontSize: 14,
                color: Colors
                    .blue, // Cambia el color del dominio según tus preferencias
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.link),
                onPressed: () {
                  // launchUrl(university['web_pages'][0]);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Future<void> launchUrl(String url) async {
  //   final uri = Uri.parse(url); // Convierte la cadena en un objeto Uri
  //   if (await canLaunchUrl(uri)) {
  //     await launchUrl(uri
  //         .toString()); // Utiliza uri.toString() para pasar la URL como String
  //   } else {
  //     throw 'No se pudo abrir la URL: $url';
  //   }
  // }
}
