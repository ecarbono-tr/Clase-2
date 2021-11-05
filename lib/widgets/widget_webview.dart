import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const MyAppWeb());

class MyAppWeb extends StatelessWidget {
  const MyAppWeb({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (BuildContext context) => const FisrtScrean(),
      },
    );
  }
}

class FisrtScrean extends StatelessWidget {
  const FisrtScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('# 1'),
      ),
      body: const WebView(
        initialUrl: 'https://github.com/ecarbono-tr/flutter_application_curso',
      ),
    );
  }
}
