import 'package:flutter/material.dart';

//alternative to

// void main() {
//   runApp(MyFirstApp());
// }

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo App'),
        ),
        body: Text('Hello Android Developer'),
      ),
    );
  }
}
