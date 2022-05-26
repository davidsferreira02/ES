import 'package:flutter/material.dart';
import 'package:my_first_flutter/screens/login.dart';
import 'package:my_first_flutter/screens/students_main_screen/students_screen.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
            children: [
              const ListTile(
                  title: Text(' ')
              ),
              ListTile(
                title: Text('Área Pessoal',
                    style: TextStyle(
                        color: Colors.red.withRed(140),
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0,
                        fontStyle: FontStyle.normal,
                        fontFamily: "OpenSans")),
                onTap: () => selectedItem(context, 1),
              ),
              ListTile(
                title: Text('Horário',
                    style: TextStyle(
                        color: Colors.red.withRed(140),
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0,
                        fontStyle: FontStyle.normal,
                        fontFamily: "OpenSans")),
                onTap: () => print('Horario'),
              ),
              ListTile(
                title: Text('Mapa de Exames',
                    style: TextStyle(
                        color: Colors.red.withRed(140),
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0,
                        fontStyle: FontStyle.normal,
                        fontFamily: "OpenSans")),
                onTap: () => print('Exames'),
              ),
              ListTile(
                title: Text('Paragens',
                    style: TextStyle(
                        color: Colors.red.withRed(140),
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0,
                        fontStyle: FontStyle.normal,
                        fontFamily: "OpenSans")),
                onTap: () => print('Paragens'),
              ),
              ListTile(
                title: Text('Sobre',
                    style: TextStyle(
                        color: Colors.red.withRed(140),
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0,
                        fontStyle: FontStyle.normal,
                        fontFamily: "OpenSans")),
                onTap: () => print('Sobre'),
              ),
              ListTile(
                title: Text('Bugs e Sugestões',
                    style: TextStyle(
                        color: Colors.red.withRed(140),
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0,
                        fontStyle: FontStyle.normal,
                        fontFamily: "OpenSans")),
                onTap: () => print('Bugs'),
              ),
              ListTile(
                title: Text('Faltas',
                    style: TextStyle(
                        color: Colors.red.withRed(140),
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0,
                        fontStyle: FontStyle.normal,
                        fontFamily: "OpenSans")),
                onTap: () => selectedItem(context, 7),
              ),
            ]
        )
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 1:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => LoginForm()));
        break;
      case 7:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => StudentScreen()));
        break;
    }
  }
}