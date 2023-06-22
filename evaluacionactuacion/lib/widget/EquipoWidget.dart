import 'package:flutter/material.dart';
import 'package:evaluacionactuacion/model/equipoFutbol.dart';

class EquipoFWidget extends StatelessWidget {
    final EquipoFutbol equipo;
    final Function onTap;
    final Function onSwipe;
    final Function onLongPress;

const EquipoFWidget({
  Key? key,
  required this.equipo,
  required this.onTap,
  required this.onSwipe,
  required this.onLongPress
}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onHorizontalDragEnd: (DragEndDetails details) {
        onSwipe(equipo.id);
        
      },
      onLongPress: () {
        onLongPress(equipo.id);
      },
      onTap: (){
        onTap(equipo);

      },
      child: Container(
        height: 50.0,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 10,
                decoration:  BoxDecoration(
                  color:  equipo.read ? Colors.transparent:Color.fromARGB(255, 228, 4, 4) ,
                  shape: BoxShape.circle
                  
                ),
              )),
              Expanded(
                flex: 9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(equipo.nombre, ),
                    Text(equipo.nJugadores),
                    Text(equipo.presidente),

                  ],
                ) )
          ],
        ),
      ),
    );
  }
}