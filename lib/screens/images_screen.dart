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
          
          
          
        ],
      )
    );
  }

  Card imageCard(){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: const Image(
              image: AssetImage('assets/imgs/Betta.jpg'),
            ),
        );
    
  }
}