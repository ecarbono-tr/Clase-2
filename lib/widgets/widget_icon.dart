import 'package:flutter/material.dart';

void main() => runApp(const ScreanIcon());

class ScreanIcon extends StatelessWidget {
  const ScreanIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const Scaffold(
        body: SafeArea(
          child: Center(
              child: Icon(
            Icons.cabin_sharp,
            color: Colors.cyan,
            size: 100,
          )),
        ),
      ),
    );
  }
}
