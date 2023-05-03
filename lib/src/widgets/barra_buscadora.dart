import 'package:flutter/material.dart';

class BarraBuscardor extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Row(
        children: [
          Container(
            width: 50,
            height: 15,
            child: const TextField(
              decoration: InputDecoration(
                labelText: "Buscar",
              ),
            ),
          ),
          const SizedBox(width: 170),
          const Icon(Icons.search,
          ),   
        ],
      )
      
    );
  }
}