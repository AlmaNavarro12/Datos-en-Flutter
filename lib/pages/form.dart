import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    //TODO: Sirve para recordar en que se queda el código
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    //TODO: Sirve para recordar en que se queda el código
    super.dispose();
    _controller.dispose();
  }

  //Se sobre escibe un nuevo método
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(40.0),
          child: TextField(
            autofocus: true,
            controller: _controller, //Se usa el guión _ para diferenciar la variable
            onSubmitted: (String value) async { //? se dice si es opcional, pero debe tener un valor inicial
              await showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Prueba de diálogo'),
                      content: Text('Ha escrito "$value" de longitud: ${value.characters.length}'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Ok'),
                        )
                      ]
                    );
                  }
              );
            },
          ),
        ),
      ),
    );
  }
}
