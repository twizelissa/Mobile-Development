import 'package:flutter/material.dart';

//alternative to

// void main() {
//   runApp(MyFirstApp());
// }

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = ['What\'s Your Favorite Food', 'What\'s Your blood DNA'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('IQ TEST APP'),
        ),
        body: Column(
          children:[
            Text('Questions!'),
            RaisedButton(child: Text,)
          ],
        ),
      ),
    );
  }
}
