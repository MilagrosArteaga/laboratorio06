import 'package:flutter/material.dart';


class SnipetScreen extends StatefulWidget {
  const SnipetScreen({super.key});
  @override
  State<SnipetScreen> createState() => _SnipetScreenState();
  Widget build(BuildContext context) {
    return const Scaffold(
      
    );
  }
}

class _SnipetScreenState extends State<SnipetScreen> {
  int contador = 0;

  void masCinco() {
    contador ++;
    setState(() {});
  }

  void menosCinco() {
    contador --;
    setState(() {});
  }

  void setCienega() {
    contador = 50;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSizeVar23 = TextStyle(fontSize: 23);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Laboratorio 06'),
        backgroundColor: Color.fromARGB(255, 121, 2, 57),
        elevation: 12.5,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Contador de clics',
            style: fontSizeVar23,
          ),
          Text(
            '$contador',
            style: fontSizeVar23,
          )
        ],
      )),
      floatingActionButton: CustomFloatingActions(
        masCincoFn: masCinco,
        menosCincoFn: menosCinco,
        setCienegaFn: setCienega,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function masCincoFn;
  final Function menosCincoFn;
  final Function setCienegaFn;

  const CustomFloatingActions(
      {super.key,
      required this.masCincoFn,
      required this.menosCincoFn,
      required this.setCienegaFn});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
           heroTag: "btn1",
          backgroundColor: Color.fromARGB(255, 193, 206, 11),
          child: const Icon(Icons.upload),
          onPressed: () => masCincoFn(),
          // () => setState(() => contador--),
        ),
        FloatingActionButton(
           heroTag: "btn2",
          backgroundColor: Color.fromARGB(255, 143, 158, 8),
          child: const Icon(Icons.download),
          onPressed: () => menosCincoFn(),
          // () => setState(() => contador--),
        ),
        FloatingActionButton(
           heroTag: "btn3",
          backgroundColor: Color.fromARGB(255, 187, 161, 12),
          child: const Icon(Icons.airplanemode_active),
          onPressed: () => setCienegaFn(),
          // () => setState(() => contador--),
        ),
      ],
    );
  }
}
