import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de flutter'),
        ), // appBar
        body: ListView(
          children: const [ 
            ListTile(
              leading: Icon(Icons.accessibility_new_sharp),
              title: Text('Chivas por la 14',
                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
              subtitle: Text('14-02-2024 - XalpaYork'),
              trailing: Icon(Icons.arrow_circle_right),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.flag),
              title: Text('Chivas por la 14',
                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                      ),
              subtitle: Text('14-02-2024 - Huamantla'),
              trailing: Icon(Icons.arrow_circle_right),

            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.flight),
              title: Text('Chivas por la 14'),
              subtitle: Text('14-02-2024 - Oaxaca'),
              trailing: Icon(Icons.arrow_circle_right),

            )
            
          ],
        )
          
      );
  }
}