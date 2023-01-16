import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        title: Text(" First App"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("welcome to homepage "),
      ),
      drawer: Drawer(),
    );
  }
}
