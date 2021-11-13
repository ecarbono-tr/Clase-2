import 'package:flutter/material.dart';

class MyAppDB extends StatefulWidget {
  const MyAppDB({Key? key}) : super(key: key);

  @override
  State<MyAppDB> createState() => _MyAppDBState();
}

class _MyAppDBState extends State<MyAppDB> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: const Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
