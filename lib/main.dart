import 'package:flutter/material.dart';
import 'package:receipt_app/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
      },
      title: 'Receetalía',
      theme: temas(),
    );
  }
}

ThemeData temas() {
  return ThemeData(
      primaryColor: Colors.blueGrey,
      accentColor: Colors.lightBlue[900],
      highlightColor: Colors.cyan[900],
      textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        headline2: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        headline3: TextStyle(
            fontSize: 23, fontWeight: FontWeight.bold, color: Colors.black),
        bodyText2: TextStyle(fontSize: 14, color: Colors.black),
        bodyText1: TextStyle(fontSize: 14, color: Colors.blueGrey),
      ));
}
