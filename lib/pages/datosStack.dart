import 'package:flutter/material.dart';

class DatosStack extends StatelessWidget {
  const DatosStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Página Datos Stack'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: SizedBox(
            width: 300.0,
            height: 300.0,
            child: Center(
              child: Stack(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                fit: StackFit.expand,
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    width: 300.0,
                    height: 300.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://scontent.fntr4-1.fna.fbcdn.net/v/t39.30808-6/275092182_813766396248329_2602492014124104368_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=UAK_AUwZLjkAX_DLrfp&_nc_ht=scontent.fntr4-1.fna&oh=00_AT-U2rxk8ss_VRypYDPMAwqkkXKkRbKngsNuvULiYiMrPA&oe=622488EA"))),
                  ),
                  Positioned(
                      top: 200.0,
                      left: 80.0,
                      child: Container(
                        width: 250.0,
                        height: 250.0,
                        child: const Text('Alma Delia Navarro Gonzalez',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      )
                  ),
                  Positioned(
                      top: 220.0, 
                      left: 110.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Regresar'),
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
