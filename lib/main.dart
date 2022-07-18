import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart'; // import matrial.dart its a library

void main() {
  runApp(MyApp()); // app run krne ke liye myapp name h
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // buildcontext se pata chalta h kossi cheze kah par h treee m]
    // its really inp sara UI ka kaam yaha hota h

    int day = 2;
    String str = "singh";
    bool ismale = true;

    num x = 30; // num m hum dono store kr sakte h int and double

    var y = "string ";
    var z = 34; // var m koi bhi data type dal sakte compilor kudh dal deta h

    const pi = 3.14; // constant define krne ke liye

    bringveg(); // ye error nhi dega becuse deafult 200 le ra
    bringveg2(
        thela:
            false); // required dalne se dalna pathta h vo even agar {} isme h
    return MaterialApp(
      // home: homepage(),
      // theme dalne ke liye according to the system
      themeMode: ThemeMode.light,

      // light mai properties deni h toh we use theme
      // themedata den aparedga
      // primaryswatch ek color pallet mai design kr dta h
      //colors class h
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
          brightness:
              Brightness.dark), // we have to give theme data tabhi work karega

//
//
      //    routes is like direction konsa page h kiadr open hoaga

//
//      ny deafult route dena h
      initialRoute: "/home",
//     deaflut "/" ye hota h
//

      routes: {
        "/": (context) =>
            LoginPage(), // "/" mtalb hi deafult homepage hota h toh upper dene ki zarurat nhi h
        // dono jagah dene se error deta

        "/home": (context) =>
            HomePage(), // ye object h dart apne app new laga deta h
        "/login": (context) => LoginPage()
      },
    );
  }

  // function bara rhe h
  //note:- parameter dete time { } ye use kerke we can giv option ki do ya nh do
  bringveg({int rupee = 200}) {}

  bringveg2({required bool thela, int rupee = 200}) {}
}
