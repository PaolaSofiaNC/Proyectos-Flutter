import 'package:carrusel_imagenes/src/screens/home_screen.dart';

import '../widgets/widgets.dart';
import 'package:flutter/material.dart';

class Progresion extends StatelessWidget{
 final String imageUrl;
   const Progresion({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: 803,
        width: 500,
        color:Colors.white,
        child: Column(
          children: [
           const SizedBox(height: 20),
            Container(
              height: 250,
              width: 500,
              decoration:const  BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(50))
              ),
              child: ClipRRect(
                borderRadius:const BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
                child: Expanded(
                  child: Image(
                    image:NetworkImage(
                      imageUrl,
                      ),
                      ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Animacion(),
            
          ],
      
        ),
      ),
    );
  }

}

