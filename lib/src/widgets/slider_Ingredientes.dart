import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:getwidget/components/carousel/gf_items_carousel.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:receipt_app/src/models/ingredientes_model.dart';
import 'package:receipt_app/src/models/receta.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

Widget sliderIngredientes(List<Ingrediente> ingredientes) {
  return Container(
      height: 120,
      width: double.infinity,
      child: Swiper(
          itemWidth: 120,
          viewportFraction: 0.3,
          itemCount: ingredientes.length,
          controller: SwiperController(),
          layout: SwiperLayout.DEFAULT,
          itemBuilder: (context, index) =>
              _imagenIngrediente(ingredientes[index], context)));
}

Widget _imagenIngrediente(Ingrediente c, context) {
  return GestureDetector(
      onTap: () => print("Ingrediente"),
      child: Container(
        alignment: AlignmentDirectional.centerStart,
        child: GFImageOverlay(
            height: 120,
            width: 80,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.20), BlendMode.darken),
            image: NetworkImage(c.src),
            borderRadius: BorderRadius.circular(10.0),
            boxFit: BoxFit.cover,
            child: Center(
              child: Text(c.nombre, style: TextStyle(color: Colors.white)),
            )),
      ));
}

Widget ingredienteDetalle(List<Ingrediente> ingredientes) {
  return SliverFixedExtentList(
    itemExtent: 25,
    delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
      return Container(
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
