import 'package:flutter/material.dart';
import 'package:evaluacionactuacion/model/equipoFutbol.dart';

class EquipoDetalle extends StatelessWidget {
  final EquipoFutbol equipoFutbol;
  const EquipoDetalle({super.key, required EquipoFutbol this.equipoFutbol});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail equipoFutbol')),
      body: Container(
        padding: EdgeInsetsDirectional.all(40),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text('Form ${equipoFutbol.nombre}'),
            Divider(
              color: Colors.red,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(equipoFutbol.nJugadores),
            Divider(
              color: Colors.red,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(equipoFutbol.presidente)
            
          ],
        ),
      ),
    );
  }
}
