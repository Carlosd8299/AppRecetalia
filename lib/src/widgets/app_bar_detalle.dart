import 'package:flutter/material.dart';
import 'package:receipt_app/src/models/receta.dart';
import 'package:receipt_app/src/pages/home_page.dart';
import 'package:receipt_app/src/styles/styles.dart';

class AppBarDetalle extends StatelessWidget {
  Receta r;
  AppBarDetalle(this.r);
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      backgroundColor: colorbg,
      expandedHeight: 300,
      elevation: 0.0,
      title: Text(
        r.titulo,
        style: TextStyle(color: Colors.white),
      ),
      leading: GestureDetector(
        child: Container(
          padding: EdgeInsets.all(0.0),
          child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              }),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: FadeInImage(
          placeholder: NetworkImage(r.src),
          image: NetworkImage(r.src),
          fadeInDuration: Duration(milliseconds: 150),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
