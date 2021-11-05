// ignore_for_file: constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:proyecto_1/model/items.dart';

void main() => runApp(const MyAppA());

class MyAppA extends StatelessWidget {
  const MyAppA({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Screan());
  }
}

class Screan extends StatefulWidget {
  const Screan({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Screan> {
  String? valorInicial;
  String? valorInicialPop;
  @override
  void initState() {
    super.initState();
    valorInicial = 'Enviar';
    valorInicialPop = 'Home';
  }

  void choiseAction(item) {
    print(item);
    switch (item) {
      case 'Home':
        print('Inicio');
        break;
      case 'Settings':
        print('Configuración');
        break;
      case 'Close':
        print('Cerrar');
        break;
    }
  }

  _onLoadPage(BuildContext context) async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SeconScrean(
          texto: controlerText,
        ),
      ),
    );
  }

  TextEditingController controlerText = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.account_box)),
            PopupMenuButton(
                onSelected: choiseAction,
                itemBuilder: (context) {
                  return Items.choise.map((item) {
                    return PopupMenuItem(
                      value: valorInicialPop,
                      child: Text(item),
                    );
                  }).toList();
                })
          ],
          title: const Text('Clase 30/10/2021 Botones'),
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  TextButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    onPressed: () {},
                    child: const Text('TextButton'),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.bold)),
                      onPressed: () {},
                      child: const Text('ElevatedButton')),
                  OutlinedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.bold)),
                      onPressed: () {},
                      child: const Text('OutlinedButton')),
                  OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.access_alarm),
                      label: const Text('OutlinedButton')),
                  IconButton(
                      tooltip: 'Alarm',
                      iconSize: 24,
                      onPressed: () {},
                      icon: const Icon(Icons.access_alarms)),
                  TextField(
                    controller: controlerText,
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: styleB.copyWith(),
                          onPressed: () {
                            _onLoadPage(context);
                          },
                          child: const Text('ElevatedButton')),
                      OutlinedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey,
                              textStyle:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          onPressed: () {},
                          child: const Text('OutlinedButton')),
                    ],
                  ),
                  DropdownButton(
                    hint: const Text("Select an option"),
                    value: valorInicial,
                    items: Items.choiseButon.map((item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(item),
                        enabled: true,
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.ac_unit),
        ),
      ),
    );
  }

  ButtonStyle styleB = ElevatedButton.styleFrom(
      primary: Colors.grey,
      textStyle: const TextStyle(fontWeight: FontWeight.bold));
}

class SeconScrean extends StatefulWidget {
  TextEditingController texto;
  SeconScrean({required this.texto, Key? key}) : super(key: key);
  @override
  _SeconScreanState createState() => _SeconScreanState();
}

class _SeconScreanState extends State<SeconScrean> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Segunda Pantalla'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SafeArea(
            child: Center(
          child: Text(widget.texto.text),
        )),
      ),
    );
  }
}
