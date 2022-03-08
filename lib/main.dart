import 'package:datos/pages/datosPage.dart';
import 'package:datos/pages/form.dart';
import 'package:datos/pages/fornulario.dart';
import 'package:datos/pages/otherPage.dart';
import 'package:datos/pages/secondScreen.dart';
import 'package:flutter/material.dart';
import 'package:datos/pages/pruebaStack.dart';
import 'package:datos/pages/datosStack.dart';
import 'package:datos/pages/form.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Flutter',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => SecondScreen(),
        '/datos': (context) => const DatosPage(),
        '/otherPage': (context) => const OtherPage(),
        '/prueba': (context) => PruebaStack(),
        '/datosStack': (context) => DatosStack(),
        '/formScreen': (context) => FormScreen(),
        '/formularioScreen': (context) => FormularioScreen(),
      }));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Página inicial'),
          backgroundColor: Colors.deepPurple,
          leading: const Icon(Icons.menu),
          elevation: 20.0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => {},
            )
          ],
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: const Text('Segunda pantalla'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/datos');
                  },
                  child: const Text('Datos'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/prueba');
                  },
                  child: const Text('Prueba Stack'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/datosStack');
                  },
                  child: const Text('Datos Stack'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/formScreen');
                  },
                  child: const Text('Longitud'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/formularioScreen');
                  },
                  child: const Text('Formulario'),
                ),
              ],
            ),
          ),
        ));
  }
}
