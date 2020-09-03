import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:receipt_app/src/models/category.dart';
import 'package:getwidget/getwidget.dart';
import 'package:receipt_app/src/pages/categorias_page.dart';

class SwiperCategorias extends StatelessWidget {
  List<Category> categorias;
  SwiperCategorias(this.categorias);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: double.infinity,
        child: Swiper(
            itemWidth: 300,
            viewportFraction: 0.26,
            itemCount: categorias.length,
            controller: SwiperController(),
            layout: SwiperLayout.DEFAULT,
            itemBuilder: (context, index) =>
                _singleCategory(categorias[index], context)));
  }
}

Widget _singleCategory(Category c, context) {
  return Container(
    child: GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryPage(c),
            ));
      },
      child: Container(
        alignment: AlignmentDirectional.centerStart,
        child: GFImageOverlay(
            height: 90,
            width: 80,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.20), BlendMode.darken),
            image: NetworkImage(c.src),
            borderRadius: BorderRadius.circular(10.0),
            boxFit: BoxFit.cover,
            child: Center(
              child: Text(c.name, style: TextStyle(color: Colors.white)),
            )),
      ),
    ),
  );
}
