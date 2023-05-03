
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Principal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 400,
          height: 803,
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(height: 50),
              BarraBuscardor(),
             CarruselImagenes(),
            ],
        
          ),
          ),
      )
        
    );
  }

}
