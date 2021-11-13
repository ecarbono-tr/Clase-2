import 'package:flutter/material.dart';

void main() => runApp(const MyAppHero());

class MyAppHero extends StatelessWidget {
  const MyAppHero({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (BuildContext context) => const FisrtScrean(),
        '/Second': (BuildContext context) => const SecondScrean(),
      },
    );
  }
}

class FisrtScrean extends StatelessWidget {
  const FisrtScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('# 1'),
      ),
      body: Center(
        child: GestureDetector(
          onLongPress: () {
            Navigator.pushNamed(context, '/Second');
          },
          child: Hero(
            tag: 'imagen',
            child: Container(
              width: 100,
              height: 100,
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
          ),
        ),
      ),
    );
  }
}

class SecondScrean extends StatelessWidget {
  const SecondScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('# 2'),
      ),
      body: Center(
        child: GestureDetector(
          child: Hero(
            tag: 'imagen',
            child: Container(
              width: 300,
              height: 300,
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
          ),
        ),
      ),
    );
  }
}
