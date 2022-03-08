import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormularioScreen extends StatefulWidget {
  FormularioScreen({Key? key}) : super(key: key);

  @override
  State<FormularioScreen> createState() => _FormularioScreenState();
}

class _FormularioScreenState extends State<FormularioScreen> {
  late TextEditingController _controller;

  bool _sa = false;
  bool _de = false;
  bool _au = false;

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
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
              keyboardType: TextInputType.emailAddress, //Tipo de teclado
              autofocus: true,
              controller:
                  _controller, //Se usa el guión _ para diferenciar la variable
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.contact_mail),
                  labelText: 'Correo',
                  hintText: 'micorreo@gmail.com'),
            ),
            const SizedBox(height: 15.0),
            const TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock), labelText: 'Contraseña'),
            ),
            const SizedBox(height: 15.0),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                  RegExp(
                      '[0-9 -]'), //Permitir solo los números del 0 al 9, el guión -
                ),
                LengthLimitingTextInputFormatter(16) //LImitar a 16 campos
              ],
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.credit_card),
                  labelText: 'Tarjeta',
                  hintText: '1234-1234-1234-1234'),
            ),
            const SizedBox(height: 15.0),
            Row(
              children: <Widget>[
                Checkbox(
                    value: _sa,
                    onChanged: (bool? value) {
                      setState(() {
                        _sa = value!;
                      });
                    }), 
                const Text(
                  "SA",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                    value: _de,
                    onChanged: (bool? value) {
                      setState(() {
                        _de = value!;
                      });
                    }), 
                const Text(
                  "DE",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                    value: _au,
                    onChanged: (bool? value) {
                      setState(() {
                        _au = value!;
                      });
                    }),
                const Text(
                  "AU",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
