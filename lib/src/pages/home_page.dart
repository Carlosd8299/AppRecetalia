import 'package:flutter/material.dart';
import 'package:receipt_app/src/models/category.dart';
import 'package:receipt_app/src/models/ingredientes_model.dart';
import 'package:receipt_app/src/models/receta.dart';
import 'package:receipt_app/src/styles/styles.dart';
import 'package:receipt_app/src/widgets/appBar.dart';
import 'package:receipt_app/src/widgets/drawer.dart';
import 'package:receipt_app/src/widgets/slider_home.dart';
import 'package:receipt_app/src/widgets/receta_listado.dart';
import 'package:receipt_app/src/widgets/slider_categorias.dart';
import '../widgets/titles.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

List<String> swiperInicio = [
  "https://images.pexels.com/photos/1487511/pexels-photo-1487511.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/3992134/pexels-photo-3992134.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/1211887/pexels-photo-1211887.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
];
Category c1 = Category(
    "Pastas",
    "https://images.pexels.com/photos/1487511/pexels-photo-1487511.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "1");
Category c2 = Category(
    "Postres",
    "https://images.pexels.com/photos/3992134/pexels-photo-3992134.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "2");
Category c3 = Category(
    "Ensaladas",
    "https://images.pexels.com/photos/1211887/pexels-photo-1211887.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "3");
Category c4 = Category(
    "Arroces",
    "https://images.pexels.com/photos/343871/pexels-photo-343871.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "4");

List<Category> categorias = [
  Category(
      "Pastas",
      "https://images.pexels.com/photos/1487511/pexels-photo-1487511.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "1"),
  Category(
      "Postres",
      "https://images.pexels.com/photos/3992134/pexels-photo-3992134.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "2"),
  Category(
      "Ensaladas",
      "https://images.pexels.com/photos/1211887/pexels-photo-1211887.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "3"),
  Category(
      "Arroces",
      "https://images.pexels.com/photos/343871/pexels-photo-343871.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "4"),
];

List<Ingrediente> ingredientes = [
  Ingrediente(
      "Ajo",
      "https://images.pexels.com/photos/4022190/pexels-photo-4022190.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "2"),
  Ingrediente(
      "Comino",
      "https://images.pexels.com/photos/1340116/pexels-photo-1340116.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "20 gr"),
  Ingrediente(
      "Carne",
      "https://images.pexels.com/photos/65175/pexels-photo-65175.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "1 lb"),
  Ingrediente(
      "Carbon",
      "https://images.pexels.com/photos/2646237/pexels-photo-2646237.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "2 kg"),
  Ingrediente(
      "Tomate",
      "https://images.pexels.com/photos/533280/pexels-photo-533280.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "2 lb"),
];

List<Ingrediente> ingredientes2 = [
  Ingrediente(
      "Harina",
      "https://images.pexels.com/photos/5765/flour-powder-wheat-jar.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "1 lb"),
  Ingrediente(
      "Azucar",
      "https://images.pexels.com/photos/141815/pexels-photo-141815.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "1 lb"),
  Ingrediente(
      "Mantequilla",
      "https://images.pexels.com/photos/3821250/pexels-photo-3821250.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "2 barras"),
  Ingrediente(
      "Arequipe",
      "https://images.pexels.com/photos/128399/pexels-photo-128399.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "1 taza"),
  Ingrediente(
      "Cococa",
      "https://images.pexels.com/photos/691152/pexels-photo-691152.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "1 taza"),
  Ingrediente(
      "Vainilla",
      "https://images.pexels.com/photos/1071015/pexels-photo-1071015.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "1 cucharada"),
  Ingrediente(
      "Huevos",
      "https://images.pexels.com/photos/162712/egg-white-food-protein-162712.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "4"),
  Ingrediente(
      "Sal",
      "https://images.pexels.com/photos/2624400/pexels-photo-2624400.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "1 pizca"),
];

List<Receta> recetasPopulares = [
  Receta(
      "https://images.pexels.com/photos/4147872/pexels-photo-4147872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      lipsum.createText(numParagraphs: 1),
      lipsum.createWord(numWords: 2),
      "Facil",
      "30 min",
      ingredientes,
      lipsum.createSentence(numSentences: 1, sentenceLength: 10),
      false,
      lipsum.createParagraph(numParagraphs: 5, numSentences: 1),
      4.5,
      c1),
  Receta(
      "https://images.pexels.com/photos/4108278/pexels-photo-4108278.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      lipsum.createText(numParagraphs: 1),
      lipsum.createWord(numWords: 2),
      "Facil",
      "30 min",
      ingredientes,
      lipsum.createSentence(numSentences: 1, sentenceLength: 10),
      true,
      lipsum.createParagraph(numParagraphs: 5, numSentences: 1),
      4.0,
      c2),
  Receta(
      "https://images.pexels.com/photos/4409497/pexels-photo-4409497.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      lipsum.createText(numParagraphs: 1),
      lipsum.createWord(numWords: 2),
      "Facil",
      "30 min",
      ingredientes2,
      lipsum.createSentence(numSentences: 1, sentenceLength: 10),
      true,
      lipsum.createParagraph(numParagraphs: 5, numSentences: 1),
      4.0,
      c3),
  Receta(
      "https://images.pexels.com/photos/4253318/pexels-photo-4253318.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      lipsum.createText(numParagraphs: 1),
      lipsum.createWord(numWords: 2),
      "Facil",
      "30 min",
      ingredientes2,
      lipsum.createSentence(numSentences: 1, sentenceLength: 10),
      false,
      lipsum.createParagraph(numParagraphs: 5, numSentences: 1),
      4.0,
      c2),
  Receta(
      "https://images.pexels.com/photos/4147872/pexels-photo-4147872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      lipsum.createText(numParagraphs: 1),
      lipsum.createWord(numWords: 2),
      "Facil",
      "30 min",
      ingredientes,
      lipsum.createSentence(numSentences: 1, sentenceLength: 10),
      false,
      lipsum.createParagraph(numParagraphs: 5, numSentences: 1),
      4.0,
      c4),
  Receta(
      "https://images.pexels.com/photos/3821692/pexels-photo-3821692.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      lipsum.createText(numParagraphs: 1),
      lipsum.createWord(numWords: 2),
      "Facil",
      "10 min",
      ingredientes2,
      lipsum.createSentence(numSentences: 1, sentenceLength: 10),
      true,
      lipsum.createParagraph(numParagraphs: 5, numSentences: 1),
      4.0,
      c1),
];

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scafolKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuLateral(),
      key: _scafolKey,
      backgroundColor: colorbg,
      body: CustomScrollView(
        slivers: [
          appBarC(context, _scafolKey),
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 10),
                  child: titles2("Recetalia", context),
                ),
                SwiperPublicidad(swiperInicio),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 10),
                  child: titles("Categorias", context),
                ),
                SizedBox(height: 5),
                SwiperCategorias(categorias),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10, 20, 0),
                  child: titles("Recetas Populares", context),
                ),
                SizedBox(height: 10),
              ],
            ),
            RecetaListado(
              recetas: recetasPopulares,
            )
          ])),
        ],
      ),
    );
  }
}
