// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const MyAppNav());

class MyAppNav extends StatelessWidget {
  const MyAppNav({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (BuildContext context) => const FisrtScrean(),
      },
    );
  }
}

class FisrtScrean extends StatefulWidget {
  const FisrtScrean({Key? key}) : super(key: key);

  @override
  State<FisrtScrean> createState() => _FisrtScreanState();
}

class _FisrtScreanState extends State<FisrtScrean> {
  int index = 0;
  static const List<Widget> listaWidget = [
    Text('Text 1'),
    Text('Text 2'),
    Text('Text 3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(index.toString()),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [listaWidget.elementAt(index)],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(size: 25),
        iconSize: 24,
        selectedFontSize: 19,
        currentIndex: index,
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: 'Segunda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.label),
            label: 'Tercera',
          ),
        ],
      ),
    );
  }
}
