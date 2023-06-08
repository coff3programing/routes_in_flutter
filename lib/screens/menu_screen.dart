import 'package:flutter/material.dart';

void main() {
  runApp(Menu());
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menú Vertical',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Menú Vertical'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: VerticalMenu(),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                  onPressed: () {
                     Navigator.pop(context);
                  },
                  icon: const Icon(Icons.home),
                  label: const Text('Go to Home'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Acción al hacer clic en el segundo botón
                  },
                  icon: const Icon(Icons.person),
                  label: const Text('Login'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    
                  },
                  icon: const Icon(Icons.settings),
                  label: const Text('Botón 3'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class VerticalMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.home),
          title:const Text('Inicio'),
          onTap: () {
            // Acción al hacer clic en Inicio
          },
        ),
        ListTile(
          leading:const Icon(Icons.person),
          title:const Text('Perfil'),
          onTap: () {
            // Acción al hacer clic en Perfil
          },
        ),
        ListTile(
          leading:const Icon(Icons.settings),
          title:const Text('Configuración'),
          onTap: () {
            // Acción al hacer clic en Configuración
          },
        ),
      ],
    );
  }
}
