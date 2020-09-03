import 'package:receipt_app/src/models/persona.dart';
import 'package:receipt_app/src/models/receta.dart';

class Blogger {
  String username, contrasena, id_blogger;
  List<Receta> recetas;
  Blogger(this.contrasena, this.username, this.recetas);
}
