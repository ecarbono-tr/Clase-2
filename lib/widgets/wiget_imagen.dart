import 'package:flutter/material.dart';

void main() => runApp(const ScreanImg());

class ScreanImg extends StatelessWidget {
  const ScreanImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejercicio img'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                child: Text('ES'),
                backgroundColor: Colors.amber,
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2020/04/03/07/07/comic-speech-bubbles-4997664_960_720.png'),
              ),
              Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  color: Colors.cyan,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2020/04/03/07/07/comic-speech-bubbles-4997664_960_720.png'),
                    fit: BoxFit.scaleDown,
                    repeat: ImageRepeat.noRepeat,
                    scale: 6,
                  ),
                ),
                margin: const EdgeInsets.only(left: 16, right: 16),
              ),
              Card(
                elevation: 10,
                child: Image.asset(
                  'assets/img/img_1.png',
                  fit: BoxFit.scaleDown,
                  repeat: ImageRepeat.noRepeat,
                  scale: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
