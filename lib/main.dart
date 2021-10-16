import 'package:flutter/material.dart';

void main() => runApp(const Screan());

class Screan extends StatelessWidget {
  const Screan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejercicio'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 150,
            transform: Matrix4.rotationZ(0.2),
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.red[900],
              border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 5),
                  width: 2,
                  style: BorderStyle.solid),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(6, 6),
                  blurRadius: 2.5,
                )
              ],
            ),
            child: Text(
              'Texto ' * 49,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed,
                shadows: [
                  Shadow(
                    color: Colors.grey,
                    offset: Offset(3, 3),
                    blurRadius: 1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
