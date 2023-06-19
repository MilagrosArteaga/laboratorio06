import 'package:flutter/material.dart';

void main() => runApp(const CardScreen());

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Titulos',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CARD'),
        ),
        body: const Center(
          child: Text('Un titulo'),
        ),
      ),
    );
  }
}
