import 'package:flutter/material.dart';
import 'package:receipt_app/src/pages/home_page.dart';
import 'package:receipt_app/src/widgets/titles.dart';

class appBarCategorias extends StatelessWidget {
  String title;
  appBarCategorias(this.title);
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color.fromRGBO(244, 255, 255, 1.0),
      floating: false,
      pinned: true,
      elevation: 0.0,
      title: titles2(title, context),
      leading: GestureDetector(
        child: Container(
          padding: EdgeInsets.all(0.0),
          child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }),
        ),
      ),
    );
  }
}
