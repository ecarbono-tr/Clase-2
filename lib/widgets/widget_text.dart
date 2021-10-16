import 'package:flutter/material.dart';

void main() => runApp(const Screantext());

class Screantext extends StatelessWidget {
  const Screantext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Screan 1'),
        ),
        body: Center(
          child: SizedBox(
            height: 300,
            width: 300,
            child: Text(
              'Texto ' * 20,
              //textDirection: TextDirection.rtl,
              //textScaleFactor: 0.8,
              //maxLines: 3,
              //softWrap: true,
              //overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.cyan,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                //wordSpacing: 5,
                //letterSpacing: 2,
                //decoration: TextDecoration.underline,
                //decorationThickness: 1,
                //decorationStyle: TextDecorationStyle.wavy,
                //backgroundColor: Colors.amber,
                shadows: [
                  Shadow(
                    color: Colors.grey,
                    offset: Offset(3, 3),
                    blurRadius: 1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
