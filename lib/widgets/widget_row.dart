import 'package:flutter/material.dart';

void main() => runApp(const ScreanRow());

class ScreanRow extends StatelessWidget {
  const ScreanRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = const TextStyle(
      color: Colors.blue,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    );
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text('Uno',
                    style: style.copyWith(fontSize: 20, color: Colors.yellow)),
                Text('Dos',
                    style: style.copyWith(fontSize: 25, color: Colors.blue)),
                Text('Tres',
                    style: style.copyWith(fontSize: 30, color: Colors.red)),
                /*Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(
                    color: Colors.cyan,
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
