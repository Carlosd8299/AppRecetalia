import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:receipt_app/src/models/receta.dart';
import 'package:receipt_app/src/pages/detalle_receta.dart';
import 'package:receipt_app/src/styles/styles.dart';

class SwiperRecetaCategoria extends StatefulWidget {
  List<Receta> categoriaPopular;
  SwiperRecetaCategoria(this.categoriaPopular);

  @override
  _SwiperRecetaCategoriaState createState() => _SwiperRecetaCategoriaState();
}

class _SwiperRecetaCategoriaState extends State<SwiperRecetaCategoria> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 190,
      child: Swiper(
          viewportFraction: 0.4,
          autoplay: false,
          loop: true,
          duration: Duration.microsecondsPerMillisecond,
          layout: SwiperLayout.DEFAULT,
          itemCount: this.widget.categoriaPopular.length,
          itemBuilder: (context, index) =>
              recetaItem(this.widget.categoriaPopular[index], context)),
    );
  }

  Widget recetaItem(Receta r, context) {
    return Container(
        margin: EdgeInsets.fromLTRB(20.0, 10, 20.0, 0),
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
            ],
          ),
        ));
  }

  Widget imageRecetaTitulo(Receta r) {
    return Stack(
      children: [
        //Imagen
        GFImageOverlay(
            width: 120,
            height: 150,
            boxFit: BoxFit.cover,
            image: NetworkImage(r.src),
            borderRadius: BorderRadius.circular(10),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.15), BlendMode.darken),
            child: Center(
              child: Container(
                color: Colors.white.withOpacity(0.7),
                child: Text(
                  r.titulo,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            )),

        //Fav Icon
        Positioned(top: 10, left: 220, child: Container(child: favIcon(r))),
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
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
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
  return BoxDecoration(boxShadow: <BoxShadow>[
    BoxShadow(blurRadius: 8.0, color: Colors.black.withOpacity(0.08))
  ], borderRadius: BorderRadius.circular(20.0));
}
