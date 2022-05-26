// ignore_for_file: unnecessary_import, deprecated_member_use

import 'package:complete_app/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          // width: 300,
          child: Container(
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Container(
                //   child: Container(
                //     width: 150,
                //     child: Image.asset('assets/images/help.png'),
                //   ),
                // ),
                SizedBox(height: 20.0),
                Text(
                  "iSCAAWIN",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "First name",
                      fillColor: Colors.grey.shade200,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                      filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Last name",
                      fillColor: Colors.grey.shade200,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                      filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "title",
                      fillColor: Colors.grey.shade200,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                      filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "email@example",
                      fillColor: Colors.grey.shade200,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                      filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      hintText: "Passowrd",
                      fillColor: Colors.grey.shade200,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.blue,
                      ),
                      filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      hintText: "Retype Passowrd",
                      fillColor: Colors.grey.shade200,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.blue,
                      ),
                      filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  // padding: EdgeInsets.all(10),
                  width: double.infinity,
                  color: Colors.blue,
                  child: RaisedButton(
                    padding: EdgeInsets.all(15),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyHome()),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 17.0, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
