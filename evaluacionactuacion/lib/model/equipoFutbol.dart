class EquipoFutbol {
  final int id;
  final String nombre;
  final String nJugadores;
  final String presidente;
  bool read;

  EquipoFutbol({
    required this.id,
    required this.nombre,
    required this.nJugadores,
    required this.presidente,
    this.read = false,
  });
}
