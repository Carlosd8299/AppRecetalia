import 'package:receipt_app/src/models/category.dart';
import 'package:receipt_app/src/models/ingredientes_model.dart';
import 'package:receipt_app/src/models/usuario.dart';

class Receta {
  final String titulo, descripcion, src, time, dificultad, resumen, preparacion;
  final List<Ingrediente> ingredientes;
  bool isFavorite = false;
  double calificacion;
  Category categoria;

  Receta(
      this.src,
      this.descripcion,
      this.titulo,
      this.dificultad,
      this.time,
      this.ingredientes,
      this.resumen,
      this.isFavorite,
      this.preparacion,
      this.calificacion,
      this.categoria);
}
