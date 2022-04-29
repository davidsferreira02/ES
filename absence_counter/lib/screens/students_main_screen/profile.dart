import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        icon: Icon(Icons.account_circle),
        itemBuilder: (context) => [
          PopupMenuItem(
            child: Text("Ver Perfil"),
            value: 1,
          ),
          PopupMenuItem(
            child: Text("Ver Faltas"),
            value: 2,
          )
        ]);
  }
}
