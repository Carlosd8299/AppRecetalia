import 'package:flutter/material.dart';

Widget appBarC(BuildContext context, GlobalKey<ScaffoldState> key) {
  return SliverAppBar(
    backgroundColor: Color.fromRGBO(244, 255, 255, 1.0),
    floating: false,
    centerTitle: true,
    title: Text("data"),
    leading: GestureDetector(
      child: Container(
        padding: EdgeInsets.all(0.0),
        child: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            onPressed: () {
              key.currentState.openDrawer();
            }),
      ),
    ),
    actions: [
      Container(
        padding: EdgeInsets.all(15.0),
        child: Icon(
          Icons.search,
          color: Colors.grey,
          size: 25,
        ),
      ),
    ],
  );
}
