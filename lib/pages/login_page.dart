import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/myroute.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Image.asset(
              "asests/images/login_img.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "welcome",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 42.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "enter user name ",
                        labelText: "UserName",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "enter password ",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                      child: Text(
                        "login",
                        style: TextStyle(fontSize: 18.0),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homepage);
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
