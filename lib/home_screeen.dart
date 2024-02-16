import 'package:flutter/material.dart';

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
              leading: const Icon(Icons.accessibility_new_sharp),
              title: Text('Chivas por la 14',
              style:  Theme.of(context).textTheme.headlineLarge,
                      ),
              subtitle:const Text('14-02-2024 - XalpaYork'),
              trailing: const Icon(Icons.arrow_circle_right),

            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.flag),
              title: Text('Chivas por la 14',
                      
                      ),
              subtitle: Text('14-02-2024 - Huamantla'),
              trailing: Icon(Icons.arrow_circle_right),

            ),
            const Divider(),
            const  ListTile(
              leading: Icon(Icons.flight),
              title: Text('Chivas por la 14',
              ),
              subtitle: Text('14-02-2024 - Oaxaca'),
              trailing: Icon(Icons.arrow_circle_right),

            )
            
          ],
        )
          
      );
  }
}