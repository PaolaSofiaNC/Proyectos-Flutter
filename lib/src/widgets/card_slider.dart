import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../screens/progresion_screen.dart';

void main() => runApp(const CarruselImagenes());

class CarruselImagenes extends StatelessWidget {
  const CarruselImagenes({super.key});

  @override
  Widget build(BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 300,
            width: 300,
            child: Swiper(
              itemCount: 10,
              indicatorLayout: PageIndicatorLayout.COLOR,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => Progresion(imageUrl:'https://picsum.photos/500/300?random=${[index]}'),
          ),
        );
                  },
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FadeInImage(
                          placeholder: const AssetImage('assets/loading.gif'),
                          image: NetworkImage('https://picsum.photos/500/300?random=${[index]}'
                          ),
                          fit: BoxFit.cover,
                          ),
                      ),
                              
                        ),
                  ),
                );
              },
              
              ),
          ),
        );
  }
}