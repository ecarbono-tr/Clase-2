import 'package:flutter/material.dart';

void main() => runApp(const ScreanContainer());

class ScreanContainer extends StatelessWidget {
  const ScreanContainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Screan 1'),
        ),
        body: Container(
          width: 300,
          height: 300,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.yellowAccent,
            border: Border.all(
                color: const Color.fromARGB(150, 150, 150, 0),
                width: 2,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(6, 6),
                blurRadius: 2.5,
              )
            ],
            //shape: BoxShape.circle,
          ),
          child: Text(
            'Texto ' * 112,
            textAlign: TextAlign.center,
          ),
          //constraints: BoxConstraints(),
          transform: Matrix4.rotationZ(0.2),
        ),
      ),
    );
  }
}
