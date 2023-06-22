import 'dart:math';

import 'package:flutter/material.dart';
import 'package:evaluacionactuacion/model/backend.dart';
import 'package:evaluacionactuacion/screens/EquipoDetailsScreen.dart';
import 'package:evaluacionactuacion/widget/EquipoWidget.dart';
import '../model/equipoFutbol.dart';

class EquipoFutbolList extends StatefulWidget {
  const EquipoFutbolList({super.key});

  @override
  State<EquipoFutbolList> createState() => _EquipoFutbolListState();
}

class _EquipoFutbolListState extends State<EquipoFutbolList> {

  var equiposFutbol = Backend().get_equipoFutbol();

  void markEquipoFutbolAsRead( int id ){
    Backend().markEquipoFutbolAsRead(id);
    setState(() {
      equiposFutbol = Backend().get_equipoFutbol();
    });
  }

  void deleteEquipoFutbol( int id ){
    Backend().deleteEquipoFutbol(id);
    setState(() {
      equiposFutbol = Backend().get_equipoFutbol()
;    });
  }
void showEquipoFutbolDetails( EquipoFutbol equipoFutbol){
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return EquipoDetalle(equipoFutbol: equipoFutbol);
  },));
  Backend().markEquipoFutbolAsRead(equipoFutbol.id);
  setState(() {
    equiposFutbol= Backend().get_equipoFutbol();
  });
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Listado de equipos de futbol'
          )),),
      body: ListView.separated(
        itemCount: equiposFutbol.length,
        separatorBuilder: (BuildContext context, int index) =>const Divider(
          color: Colors.black,
          indent: 40.0,
          endIndent: 20.0,
        ) ,
        itemBuilder:( BuildContext context, int index) =>(
          EquipoFWidget(

            equipo:  equiposFutbol[index],
            onLongPress: markEquipoFutbolAsRead ,
            onTap: showEquipoFutbolDetails,
            onSwipe: deleteEquipoFutbol ,
          )),
      ),
    );
    
  }
}