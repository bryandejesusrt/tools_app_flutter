import 'package:flutter/material.dart';
import 'package:tools_app/pages/home.dart';

void main() => runApp(const Tolls());

class Tolls extends StatelessWidget {
  const Tolls({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conteau'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              color: Colors.white, // Color blanco en la mitad izquierda
              child: Image.asset(
                  'assets/images/toolbox.png'), // Cambia 'your_image.png' por la ruta de tu imagen
            ),
            SizedBox(height: 25), // Espacio entre el texto y el botón
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: const Text('Ir a las herramientas  ⚙️'),
            ),
          ],
        ),
      ),
    );
  }
}
