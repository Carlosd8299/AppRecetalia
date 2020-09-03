import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:receipt_app/src/models/receta.dart';
import 'package:receipt_app/src/pages/detalle_receta.dart';
import 'package:receipt_app/src/styles/styles.dart';
import 'package:getwidget/getwidget.dart';

class RecetaListado extends StatefulWidget {
  List<Receta> recetas;
  RecetaListado({@required this.recetas});

  @override
  _RecetaListadoState createState() => _RecetaListadoState();
}

class _RecetaListadoState extends State<RecetaListado> {
  /* Widget build(BuildContext context) {
    return SliverFixedExtentList(
      itemExtent: 400,
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return recetaItem(this.widget.recetas[index], context);
      }, childCount: this.widget.recetas.length),
    );
  }*/

  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 250,
      child: Swiper(
          viewportFraction: 0.7,
          controller: SwiperController(),
          layout: SwiperLayout.DEFAULT,
          itemCount: this.widget.recetas.length,
          itemBuilder: (context, index) =>
              recetaItem(this.widget.recetas[index], context)),
    );
  }

  Widget recetaItem(Receta r, context) {
    return Container(
        margin: EdgeInsets.fromLTRB(10.0, 10, 10.0, 0),
        decoration: recetaItemDecoration(),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(r),
                ));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imageRecetaTitulo(r),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: textoReceta(context, r),
              ),
            ],
          ),
        ));
  }

  Widget imageRecetaTitulo(Receta r) {
    return Stack(
      children: [
        //Imagen
        GFImageOverlay(
            boxFit: BoxFit.cover,
            image: NetworkImage(r.src),
            borderRadius: BorderRadius.circular(10),
            height: 200,
            width: 200,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.05), BlendMode.darken),
            child: Center(
              child: Container(
                color: Colors.white.withOpacity(0.7),
                child: Text(
                  r.titulo,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            )),

        //Fav Icon
        Positioned(top: 10, left: 250, child: Container(child: favIcon(r))),
      ],
    );
  }

  Widget textoReceta(context, Receta r) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        children: [
          SizedBox(
            height: 9,
          ),
          Text(
            r.resumen,
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Container(
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
        ],
      ),
    );
  }

  Widget favIcon(Receta r) {
    return GestureDetector(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          ),
          Icon(
            r.isFavorite ? Icons.favorite : Icons.favorite_border,
            color: r.isFavorite ? Colors.red : Colors.grey,
          ),
        ],
      ),
      onTap: () {
        setState(() {
          r.isFavorite = !r.isFavorite;
        });
      },
    );
  }
}

BoxDecoration recetaItemDecoration() {
  return BoxDecoration(
      color: colorbg,
      boxShadow: <BoxShadow>[
        BoxShadow(blurRadius: 8.0, color: Colors.black.withOpacity(0.2))
      ],
      borderRadius: BorderRadius.circular(20.0));
}
