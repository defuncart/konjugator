import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Aleo',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Konjugator'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
