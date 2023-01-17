import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        title: Text("Catalog App"),
        // backgroundColor: Colors.deepPurple,
        // foregroundColor: Color.fromARGB(255, 2, 37, 66),
        centerTitle: true,
      ),
      body: Center(
        child: Text("welcome to homepage "),
      ),
      drawer: MyDrawer(),
    );
  }
}
