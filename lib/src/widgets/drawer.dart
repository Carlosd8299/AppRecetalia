import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:receipt_app/src/pages/profile_page.dart';
import 'package:receipt_app/src/widgets/titles.dart';

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AvatarGlow(
            glowColor: Colors.blue,
            endRadius: 100.0,
            duration: Duration(milliseconds: 2000),
            repeat: true,
            showTwoGlows: true,
            repeatPauseDuration: Duration(milliseconds: 100),
            child: Material(
              elevation: 8.0,
              shape: CircleBorder(),
              child: GFAvatar(
                maxRadius: 60,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
            ),
          ),
          titles("Sara Gallardo", context),
          Divider(
            thickness: 1,
          ),
          ListTile(
            title: Text("Mi perfil"),
            trailing: Icon(Icons.portrait),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileApp()),
              );
            },
          ),
          ListTile(
            title: Text("Mis recetas"),
            trailing: Icon(Icons.book),
            onTap: () {},
          ),
          ListTile(
            title: Text("Recetas favoritas"),
            trailing: Icon(Icons.favorite),
            onTap: () {},
          ),
          ListTile(
            title: Text("Mis Chefs"),
            trailing: Icon(Icons.people),
            onTap: () {},
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            title: Text("Configuracion de la cuenta"),
            trailing: Icon(Icons.settings),
            onTap: () {},
          ),
          RaisedButton(
            onPressed: () {},
            color: Colors.red,
            textColor: Colors.white,
            child: Text("Cerrar sesion"),
          )
        ],
      ),
    );
  }
}
