import 'package:flutter/material.dart';
import 'package:practica_3/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de flutter'),
        ), 
        body: ListView(
          children: [ 
            ListTile(
              leading: const Icon(Icons.input_rounded, color: AppTheme.mainColor,
              ),
              title: Text(
                'Entradas',
              style:  Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: const Text('Diferentes widgets para entradas de flutter'),

              trailing: const Icon(Icons.arrow_circle_right, color: AppTheme.mainColor,
              ),

            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.list_alt_rounded, color: AppTheme.mainColor,),
              title: Text(
              'ListView.builder',
              style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle:const Text('14-02-2024 - Huamantla'),
              trailing: const Icon(Icons.arrow_circle_right, color: AppTheme.mainColor,
              ),

            ),
            const Divider(),
            const  ListTile(
              leading: Icon(Icons.notification_add, color: AppTheme.mainColor,
              ),
              title: Text(
                'Notificaciones',
                
              ),
              subtitle: Text('Creación de notificaciones',
              style: AppTheme.lightTheme.textTheme.bodySmall,),
              trailing: Icon(Icons.arrow_circle_right, color: AppTheme.mainColor,
              ),

            )
          ],
        )
          
      );
  }
}