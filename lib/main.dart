import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Centrada',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container en columna'),
        backgroundColor: Colors.greenAccent, // Color de fondo del AppBar
      ),
      body: Center(
        // Centra el contenido
        child: Card(
          margin: EdgeInsets.all(16.0), // Margen alrededor de la tarjeta
          elevation: 5.0, // Sombra
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0), // Esquinas redondeadas
          ),
          color: Colors.blue, // Color azul
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize
                  .min, // Ajusta el tamaño de la columna al contenido
              children: <Widget>[
                Text(
                  'Dato 1',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Dato 2',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Dato 3',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
