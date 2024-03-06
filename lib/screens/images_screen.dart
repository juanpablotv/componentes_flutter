import 'package:flutter/material.dart';
import 'package:practica_3/theme/app_theme.dart';

class ImagesScreenState extends StatefulWidget {
  const ImagesScreenState({super.key});

  @override
  State<ImagesScreenState> createState() => _ImagesScreenStateState();
}

class _ImagesScreenStateState extends State<ImagesScreenState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Imagenes',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
      ),
      body:  ListView (
        children: [
          imageCard(),
          imageWeb(),
          
          
          
        ],
      )
    );
  }

  Card imageCard(){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(20),
      elevation:15,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child:  Column(
          children: [
            const Image(
              image: AssetImage('assets/imgs/Betta.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child:Text(
                'Betta macho',
                style: AppTheme.lightTheme.textTheme.headlineMedium),
            ),
          ],
        ),
      ),
    );
    
  }


  Widget imageWeb(){
    return Center(
      child: Image.network('https://coburgaquarium.com.au/cdn/shop/products/halfmoonbettafancy.jpg?v=1681367457'),
      );
  }
}