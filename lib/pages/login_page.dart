import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/myroute.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool change = false;

  final _formkey = GlobalKey<FormState>();

  moveTohere(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        change = true;
      });

      await Future.delayed(Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoutes.homepage);
      setState(() {
        change = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Image.asset(
                  "asests/images/hey.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "welcome $name",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 42.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "enter user name ",
                          labelText: "UserName",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter the username";
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "enter password ",
                            labelText: "Password",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "please enter the password";
                            } else if (value.length <= 8) {
                              return "password less";
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 30.0,
                      ),
                      InkWell(
                        onTap: () => moveTohere(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 50,
                          width: change ? 50 : 150,
                          alignment: Alignment.center,

                          // ignore: sort_child_properties_last
                          child: change
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.circular(change ? 50 : 8)),
                        ),
                      )
                      // ElevatedButton(
                      //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                      //   child: Text(
                      //     "login",
                      //     style: TextStyle(fontSize: 18.0),
                      //   ),
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homepage);
                      //   },
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
