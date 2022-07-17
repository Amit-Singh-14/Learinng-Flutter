import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart'; // import matrial.dart its a library

void main() {
  runApp(myApp()); // app run krne ke liye myapp name h
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // its really inp sara UI ka kaam yaha hota h

    int day = 2;
    String str = "singh";
    bool ismale = true;

    num x = 30; // num m hum dono store kr sakte h int and double

    var y = "string ";
    var z = 34; // var m koi bhi data type dal sakte compilor kudh dal deta h

    const pi = 3.14; // constant define krne ke liye 

    return MaterialApp(
      home: homepage(),
    );
  }
}
