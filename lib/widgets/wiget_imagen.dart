import 'package:flutter/material.dart';

void main() => runApp(const ScreanImg());

class ScreanImg extends StatelessWidget {
  const ScreanImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: const Text('Ejercicio'),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                width: 300,
                height: 300,
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2020/04/03/07/07/comic-speech-bubbles-4997664_960_720.png',
                  fit: BoxFit.scaleDown,
                  repeat: ImageRepeat.noRepeat,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
