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
      home: Text('Hello'),
    );
  }
}
