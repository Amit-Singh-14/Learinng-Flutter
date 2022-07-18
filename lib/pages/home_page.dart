import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int day = 2;
  final String str = "singh";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        title: Center(child: Text(" it's app")),
      ), // top part ke liye h AppBar() ye widgit h
      body: Center(
        child: Container(
          child: Text(
              "welcome $day $str "), // to add vaiable we use $varname or + krke bhi likh sakte
        ),
      ),
      drawer: Drawer(), // isse side mai home seeting wala option aata h
    );
  }
}
