// ignore_for_file: deprecated_member_use

import 'package:complete_app/homescreen.dart';
import 'package:complete_app/signUp.dart';
import 'package:flutter/material.dart';
import './signUp.dart';
import './homescreen.dart';

class MyLogn extends StatefulWidget {
  const MyLogn({Key? key}) : super(key: key);

  @override
  State<MyLogn> createState() => _MyLognState();
}

class _MyLognState extends State<MyLogn> {
  bool isHover = false;
  Offset mousePos = new Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.red,
        // width: 300,
        margin: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Container(
                width: 100,
                child: Image.asset('assets/images/help.png'),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              "Create a new account",
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
            SizedBox(height: 15.0),
            Container(
              // padding: EdgeInsets.all(10),
              width: double.infinity,
              child: RaisedButton(
                padding: EdgeInsets.all(15),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHome()),
                  );
                },
                color: Colors.blue,
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 17.0, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Create new account?"),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    );
                  },
                  child: MouseRegion(
                    child: Text("Sign Up",
                        style: TextStyle(
                            color: isHover ? Colors.red : Colors.blue,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
