import 'equipoFutbol.dart';

class Backend {
  /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _equipoFutbol = [
    EquipoFutbol(
      id: 631,
      nombre: 'Emelec',
      nJugadores: '11',
      presidente:
          'Pedro jose',
    ),
    EquipoFutbol(
      id: 522,
      nombre: 'Barcelona',
      nJugadores: '10',
      presidente:
          'Juan carlos senobia',
    ),
     EquipoFutbol(
      id: 562,
      nombre: 'Real madrid',
      nJugadores: '11',
      presidente:
          'Carlos alfredo rivera',
    ),
     EquipoFutbol(
      id: 822,
      nombre: 'Nacional',
      nJugadores: '11',
      presidente:
      'Juan reyes pincay'
    ),
     EquipoFutbol(
      id: 592,
      nombre: 'Macara',
      nJugadores: '11',
      presidente:
      'Mario Cevilla'
    ),
  ];

 

  List<EquipoFutbol> get_equipoFutbol() {
    return _equipoFutbol;
  }

  void markEquipoFutbolAsRead(int id) {
    final index = _equipoFutbol.indexWhere((equipoFutbol) => equipoFutbol.id == id);
    _equipoFutbol[index].read = true;
  }

  void deleteEquipoFutbol(int id) {
    _equipoFutbol.removeWhere((equipoFutbol) => equipoFutbol.id == id);
  }

}
