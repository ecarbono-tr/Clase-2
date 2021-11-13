import 'package:flutter/material.dart';

class MyAppPanel extends StatefulWidget {
  const MyAppPanel({Key? key}) : super(key: key);

  @override
  State<MyAppPanel> createState() => _MyAppPanelState();
}

class _MyAppPanelState extends State<MyAppPanel> {
  final listitems = [
    MyExpanded(body: 'Hola', titulo: 'Titulo 1', isExpanded: false),
    MyExpanded(body: 'Mundo', titulo: 'Titulo 2', isExpanded: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          ExpansionPanelList(
            animationDuration: const Duration(milliseconds: 500),
            expansionCallback: (panelIndex, isExpanded) {
              setState(() {
                listitems[panelIndex].isExpanded = !isExpanded;
              });
            },
            children: [
              ...listitems.map((MyExpanded e) {
                return ExpansionPanel(
                  backgroundColor: Colors.amber,
                  isExpanded: e.isExpanded,
                  canTapOnHeader: true,
                  headerBuilder: (context, isExpanded) {
                    return ListTile(
                      contentPadding: const EdgeInsets.all(10.0),
                      title: Text(e.titulo),
                    );
                  },
                  body: Container(
                      margin: const EdgeInsets.all(8), child: Text(e.body)),
                );
              }).toList(),
            ],
          )
        ],
      ),
    );
  }
}

class MyExpanded {
  bool isExpanded;
  String body, titulo;
  MyExpanded(
      {required this.body, required this.titulo, required this.isExpanded});
}
