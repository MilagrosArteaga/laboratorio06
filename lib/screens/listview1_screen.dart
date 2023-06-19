import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 153, 255),
          title: const Text('Lista de opciones'),
          elevation: 0,
        ),
        body: ListView(children: const [
          ListTile(
            title: Text('Fondo'),
            leading: Icon(Icons.image),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('Brillo'),
            leading: Icon(Icons.light),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('Avanzado'),
             leading: Icon(Icons.wheelchair_pickup),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
         
        ]));
  }
}
