import 'package:flutter/material.dart';

Widget titles(String texto, context) {
  return Container(
    child: Text(
      texto,
      style: Theme.of(context).textTheme.headline1,
    ),
  );
}

Widget titles2(String texto, context) {
  return Container(
    child: Text(
      texto,
      style: Theme.of(context).textTheme.headline2,
    ),
  );
}

Widget titles3(String texto, context) {
  return Container(
    child: Text(
      texto,
      style: Theme.of(context).textTheme.headline3,
    ),
  );
}
