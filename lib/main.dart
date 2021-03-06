// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:proyecto_1/model/movie.dart';
import 'package:proyecto_1/widgets/widget_expand_pandel.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
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
  final Movie movie = hercules;

  static List<Widget> listaWidget = [
    const MyAppPanel(),
    const Text('Proximament'),
    const Text('Descargar'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [listaWidget.elementAt(index)],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedLabelStyle: const TextStyle(
          color: Colors.white,
        ),
        unselectedItemColor: Colors.white,
        iconSize: 20,
        selectedFontSize: 20,
        unselectedFontSize: 16,
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
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle),
            label: 'Proximamente',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: 'Descargas',
          ),
        ],
      ),
    );
  }
}
