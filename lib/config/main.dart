import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_module.dart';


void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppBarApp(),
    );
  }
}

class AppBarExemple extends StatelessWidget{
  const AppBarExemple({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KKK'), actions: <Widget>[
        IconButton(icon: const Icon(Icons.add_alert), tooltip: 'Mostrar snackbar',onPressed: () {              
          ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('This is a snackbar')));
          }
        ),
        IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Ir para proxima página',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Próxima página'),
                    ),
                    body: const Center(
                      child: Text(
                        'Esta é a página',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Esta é a home page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
