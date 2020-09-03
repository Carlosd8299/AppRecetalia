import 'package:flutter/material.dart';
import 'package:receipt_app/src/models/ingredientes_model.dart';
import 'package:receipt_app/src/models/receta.dart';
import 'package:receipt_app/src/styles/styles.dart';
import 'package:receipt_app/src/widgets/app_bar_detalle.dart';
import 'package:receipt_app/src/widgets/slider_Ingredientes.dart';
import 'package:receipt_app/src/widgets/titles.dart';

class DetailsPage extends StatelessWidget {
  final Receta r;
  DetailsPage(this.r);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorbg,
        body: CustomScrollView(slivers: [
          AppBarDetalle(r),
          SliverList(
              delegate: SliverChildListDelegate([
            introDetalle(context, r),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: titles3("Ingredientes", context),
            ),
            sliderIngredientes(r.ingredientes),
          ])),
          ingredienteDetalle(r.ingredientes),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: titles3("Preparación", context),
            ),
            textoPreparacion(context, r),
          ])),
        ]));
  }

  Widget introDetalle(context, Receta r) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 10.0, 20.0, 0),
            alignment: Alignment.topLeft,
            child: Text(
              r.titulo,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10.0, 20.0, 0),
            child: Text(
              r.descripcion,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 10.0),
            child: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.alarm,
                    color: Colors.yellow[600],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(r.time),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.fastfood,
                    color: Colors.yellow[600],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(r.dificultad),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget ingredienteDetalle(List<Ingrediente> ingredientes) {
    return SliverFixedExtentList(
      itemExtent: 40,
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(" N" +
                  (index + 1).toString() +
                  ": " +
                  ingredientes[index].nombre +
                  " " +
                  " - Cantidad: " +
                  ingredientes[index].cantidad),
            ],
          ),
        );
      }, childCount: ingredientes.length),
    );
  }

  Widget textoPreparacion(context, Receta r) {
    return Container(
        padding: EdgeInsets.fromLTRB(20, 10.0, 20.0, 0),
        child: Text(
          r.preparacion,
        ));
  }
}
