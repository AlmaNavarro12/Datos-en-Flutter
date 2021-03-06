import 'package:flutter/material.dart';

class DatosPage extends StatelessWidget {
  const DatosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Datos'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                circleImage(),
                SizedBox(height: 15.0),
                Text(
                  "Alma Delia Navarro Gonzalez",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15.0),
                Text(
                  'Tecnologias de la Información Área Desarrollo de Software Multiplataforma',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 15.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Regresar'),
                ),
              ],
            ),
          ),
        ));
  }
}

circleImage() {
    return Center(
      child : new Container(
      width: 190.0,
      height: 190.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
                 "https://scontent.fntr4-1.fna.fbcdn.net/v/t39.30808-6/245912195_734210107537292_1223832837525393687_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=174925&_nc_ohc=JJts8BMdwaUAX9-vjnO&_nc_ht=scontent.fntr4-1.fna&oh=00_AT90Oh5XjZzcCwu1MmowxBMEO-4tMfH_9NKbOd42ITzE7Q&oe=6224FE80")
            )
        ),
     ),
   );
  } 
