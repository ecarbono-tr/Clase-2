import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (BuildContext context) => ColorScrean(),
        '/Second': (BuildContext context) => ColorScrean(),
      },
    );
  }
}

class ColorScrean extends StatefulWidget {
  const ColorScrean({Key? key}) : super(key: key);

  @override
  _ColorScreanState createState() => _ColorScreanState();
}

class _ColorScreanState extends State<ColorScrean> {
  final Color _color = const Color.fromARGB(255, 255, 0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  textStyle: const TextStyle(fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.pushNamed(context, "/Second", arguments: _color);
              },
              child: const Text('ElevatedButton')),
        ),
      ),
    );
  }
}

class ColorEdit extends StatefulWidget {
  const ColorEdit({Key? key}) : super(key: key);

  @override
  _ColorEditState createState() => _ColorEditState();
}

class _ColorEditState extends State<ColorEdit> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final color = ModalRoute.of(context)!.settings.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                textStyle: const TextStyle(fontWeight: FontWeight.bold)),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('ElevatedButton')),
      )),
    );
  }
}
