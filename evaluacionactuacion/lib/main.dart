import 'package:flutter/material.dart';
import 'package:evaluacionactuacion/model/backend.dart';
import 'package:evaluacionactuacion/screens/EquipoListScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Evaluacion',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: EquipoFutbolList(),
    );
  }

}


