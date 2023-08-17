import 'package:diario_aula/view/solicitar_feedback.dart';
import 'package:flutter/material.dart';

import 'aluno_aulas.dart';
import 'detalhes_aula.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: const Color(0xFF00BF63),
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('Solicitar Feedback'),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => FeedbackScreen(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
