
import 'package:flutter/material.dart';
 //Elementos en ingles pa practicar xd
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MENU DE OPCIONES'),
          elevation: 0,
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: [
          ListTile(
            title: const Text('Ajustes'),
            leading: const Icon(Icons.settings),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
                    Navigator.pushNamed(context, 'listview1');
                  },
          ),
          ListTile(
            title: const Text('Titulos'),
              leading: const Icon(Icons.title),
            trailing: const Icon(Icons.arrow_forward_ios),
             onTap: () {
                    Navigator.pushNamed(context, 'card');
                  },
          ),
          ListTile(
            title: const Text('Alerta'),
            leading: const Icon(Icons.dangerous),
            trailing: const Icon(Icons.arrow_forward_ios),
             onTap: () {
                    Navigator.pushNamed(context, 'alert');
                  },
          )
        ]));
  }
}
