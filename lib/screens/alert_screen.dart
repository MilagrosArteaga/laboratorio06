import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 68, 255),
        title: const Text('ALERTA!'),
        elevation: 0,
      ),
      
      
      body: Container(
        
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('hhttps://st.depositphotos.com/1259239/1270/v/450/depositphotos_12704011-stock-illustration-red-exclamation-sign.jpg'),
            fit: BoxFit.fill,
            )
            ),
            
      ),
      
    );
    
  }
}