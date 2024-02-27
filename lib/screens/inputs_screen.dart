import 'package:flutter/material.dart';
import 'package:practica_3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool valueSwitch = false;
  double valueSlider = 0.0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Entradas')),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Entradas',
            style: AppTheme.lightTheme.textTheme.headlineLarge, 
            ),
            entradaTexto(),
            entradaSlider(),

        
          const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: null ,
              child: Text('Regresar'),
            ),
            ElevatedButton(
              onPressed: null ,
              child: Text('Ir a Data Screen',
                ),
              ),
            ],
        
            ),
          ],
        ),
      
    );

  }

  TextField entradaTexto() {
    return TextField(
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              labelText: 'Escribe tu Nombre:',
              labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
          );
  }
  
  Row entradaSwitch(){
    return Row(
      children: <Widget> [
        Text(
          '¿Te gusta Flutter?',
          style:AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Switch(
          value: valueSwitch,
          onChanged: (value){
            setState((){
              valueSwitch = value;
            });
            
          },
        )
      ],
    );
  }
  Row entradaSlider(){
    return Row(
      children: [
        Text(
          '¿Que tanto te gusta Flutter?',
          style : AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
          min: 0.0,
          max: 10.0,
          value: valueSlider,
          activeColor: AppTheme.mainColor,
          inactiveColor: AppTheme.accentColor2,
          thumbColor: const Color.fromARGB(255, 115, 125, 128),
          divisions: 10,
          label: '${valueSlider.round()}',
          onChanged:(value){
            setState(() {
              valueSlider = value;
              print('Valor del slider:  $valueSlider');
            });
          },
        ),
      ],
    );
  }
}