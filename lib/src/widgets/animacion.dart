import 'dart:math';

import 'package:flutter/material.dart';

class Animacion extends StatefulWidget{
  @override
  State<Animacion> createState() => _CambiarState();
}

class _CambiarState extends State<Animacion> {
 double alto = Random().nextDouble() * 200;
 double ancho = Random().nextDouble() * 200;
 double radio = Random().nextDouble() * 200;

void Cambio(){
  setState(() {
     alto = Random().nextDouble() * 200;
     ancho = Random().nextDouble() * 200;
     radio = Random().nextDouble() * 200;
    });
}

Color generateRandomColor() {
  Random random = Random();
  int r = random.nextInt(256);
  int g = random.nextInt(256);
  int b = random.nextInt(256);
  return Color.fromARGB(255, r, g, b);
}

  @override
  Widget build(BuildContext context) {
   return Container(
      height: 300,
      width: 500,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            child: Center(
              child: AnimatedContainer(
                height: alto,
                width: ancho,
                decoration: BoxDecoration(
                  color: generateRandomColor(),
                  borderRadius: BorderRadius.circular(radio),
                ),
                duration: const Duration(milliseconds: 500),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                heroTag: 'btn2',
                 elevation: 0.0,
                 backgroundColor: Colors.black,
                 onPressed: () {
                   Navigator.pop(context);
                 },
                 child: const Icon(Icons.arrow_back),
               ),
               const SizedBox(
                width: 20,
               ),
                FloatingActionButton(
                key: const Key("1"),
                heroTag: 'btn1',
                 elevation: 0.0,
                 backgroundColor: Colors.black,
                 onPressed: () {
                   Cambio();
                 },
                 child: const Icon(Icons.play_arrow),
               ),
          ],)
        ],
      ),
   );
  }
}