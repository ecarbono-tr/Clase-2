import 'package:flutter/material.dart';

void main() => runApp(const ScreanColumn());

class ScreanColumn extends StatelessWidget {
  const ScreanColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start, //Eje principal
            crossAxisAlignment: CrossAxisAlignment.center, // Eje Secundario
            verticalDirection: VerticalDirection.down,
            children: [
              const Text('data'),
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.cyan,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
