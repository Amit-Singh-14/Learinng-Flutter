import 'package:flutter/material.dart'; // import matrial.dart its a library

void main() {
  runApp(myApp()); // app run krne ke liye myapp name h
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // its really inp sara UI ka kaam yaha hota h
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
          child: Text("welcome"),
            ),
        ),
      ),
    );
  }
}
  