// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './mynav.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _key,
        drawer: Drawer(
          child: MyDrawer(),
        ),
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: ListTile(
            onTap: () {
              _key.currentState!.openDrawer();
              // Navigator.pop(context);
            },
            title: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          title: Text("Hem"),
        ),
        body: Container(
          padding: EdgeInsets.all(5),
          color: Colors.grey.shade200,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              // my list card
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: EdgeInsets.all(15),
                child: Row(
                  // space between children
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //  column one
                    Column(
                      children: [
                        CircleAvatar(
                          // backgroundColor: Colors.transparent,
                          radius: 30.0,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/brien.jpg',
                              height: 70,
                              width: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // column two
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sophie Doe",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade900),
                            textAlign: TextAlign.left),
                        Text(
                          "Database Manager",
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade900),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade300,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            ),
                            margin: EdgeInsets.only(top: 20),
                            height: 30,
                            // padding: EdgeInsets.all(5),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              onPressed: null,
                              child: Text(
                                'connect',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            )),
                      ],
                    ),
                    // column three
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // price and rate
                      children: [
                        // price
                        Column(
                          children: [
                            Container(
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.amber.shade100,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              padding: EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "110\$",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        // height: 1.5,
                                        color: Colors.grey.shade600),
                                  ),
                                  Text(
                                    "Per hour",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        // height: 1.5,
                                        color: Colors.grey.shade600),
                                  ),
                                ],
                              ),
                            ),
                            // rate
                            SizedBox(height: 20),
                            Container(
                              // color: Colors.amber.shade100,
                              padding: EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  Text(
                                    "Rate",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        // height: 1.5,
                                        color: Colors.grey.shade600),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber.shade700,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber.shade700,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber.shade700,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Mylistcard end
              SizedBox(height: 10),
              // my list card
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: EdgeInsets.all(15),
                child: Row(
                  // space between children
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //  column one
                    Column(
                      children: [
                        CircleAvatar(
                          // backgroundColor: Colors.transparent,
                          radius: 30.0,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/brien.jpg',
                              height: 70,
                              width: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // column two
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sophie Doe",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade900),
                            textAlign: TextAlign.left),
                        Text(
                          "Database Manager",
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade900),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade300,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            ),
                            margin: EdgeInsets.only(top: 20),
                            height: 30,
                            // padding: EdgeInsets.all(5),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              onPressed: null,
                              child: Text(
                                'connect',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            )),
                      ],
                    ),
                    // column three
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // price and rate
                      children: [
                        // price
                        Column(
                          children: [
                            Container(
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.amber.shade100,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              padding: EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "110\$",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        // height: 1.5,
                                        color: Colors.grey.shade600),
                                  ),
                                  Text(
                                    "Per hour",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        // height: 1.5,
                                        color: Colors.grey.shade600),
                                  ),
                                ],
                              ),
                            ),
                            // rate
                            SizedBox(height: 20),
                            Container(
                              // color: Colors.amber.shade100,
                              padding: EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  Text(
                                    "Rate",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        // height: 1.5,
                                        color: Colors.grey.shade600),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber.shade700,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber.shade700,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber.shade700,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Mylistcard end
              SizedBox(height: 10),
              // my list card
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: EdgeInsets.all(15),
                child: Row(
                  // space between children
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //  column one
                    Column(
                      children: [
                        CircleAvatar(
                          // backgroundColor: Colors.transparent,
                          radius: 30.0,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/brien.jpg',
                              height: 70,
                              width: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // column two
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sophie Doe",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade900),
                            textAlign: TextAlign.left),
                        Text(
                          "Database Manager",
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade900),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade300,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            ),
                            margin: EdgeInsets.only(top: 20),
                            height: 30,
                            // padding: EdgeInsets.all(5),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              onPressed: null,
                              child: Text(
                                'connect',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            )),
                      ],
                    ),
                    // column three
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // price and rate
                      children: [
                        // price
                        Column(
                          children: [
                            Container(
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.amber.shade100,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              padding: EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "110\$",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        // height: 1.5,
                                        color: Colors.grey.shade600),
                                  ),
                                  Text(
                                    "Per hour",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        // height: 1.5,
                                        color: Colors.grey.shade600),
                                  ),
                                ],
                              ),
                            ),
                            // rate
                            SizedBox(height: 20),
                            Container(
                              // color: Colors.amber.shade100,
                              padding: EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  Text(
                                    "Rate",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        // height: 1.5,
                                        color: Colors.grey.shade600),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber.shade700,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber.shade700,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber.shade700,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Mylistcard end
              SizedBox(height: 10),
              // my list card
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: EdgeInsets.all(15),
                child: Row(
                  // space between children
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //  column one
                    Column(
                      children: [
                        CircleAvatar(
                          // backgroundColor: Colors.transparent,
                          radius: 30.0,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/brien.jpg',
                              height: 70,
                              width: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // column two
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sophie Doe",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade900),
                            textAlign: TextAlign.left),
                        Text(
                          "Database Manager",
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade900),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade300,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            ),
                            margin: EdgeInsets.only(top: 20),
                            height: 30,
                            // padding: EdgeInsets.all(5),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              onPressed: null,
                              child: Text(
                                'connect',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            )),
                      ],
                    ),
                    // column three
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // price and rate
                      children: [
                        // price
                        Column(
                          children: [
                            Container(
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.amber.shade100,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              padding: EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "110\$",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        // height: 1.5,
                                        color: Colors.grey.shade600),
                                  ),
                                  Text(
                                    "Per hour",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        // height: 1.5,
                                        color: Colors.grey.shade600),
                                  ),
                                ],
                              ),
                            ),
                            // rate
                            SizedBox(height: 20),
                            Container(
                              // color: Colors.amber.shade100,
                              padding: EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  Text(
                                    "Rate",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        // height: 1.5,
                                        color: Colors.grey.shade600),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber.shade700,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber.shade700,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber.shade700,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Mylistcard end
              SizedBox(height: 10),
              // my list card
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: EdgeInsets.all(15),
                child: Row(
                  // space between children
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //  column one
                    Column(
                      children: [
                        CircleAvatar(
                          // backgroundColor: Colors.transparent,
                          radius: 30.0,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/brien.jpg',
                              height: 70,
                              width: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // column two
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sophie Doe",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade900),
                            textAlign: TextAlign.left),
                        Text(
                          "Database Manager",
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade900),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade300,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            ),
                            margin: EdgeInsets.only(top: 20),
                            height: 30,
                            // padding: EdgeInsets.all(5),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              onPressed: null,
                              child: Text(
                                'connect',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            )),
                      ],
                    ),
                    // column three
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // price and rate
                      children: [
                        // price
                        Column(
                          children: [
                            Container(
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.amber.shade100,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              padding: EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "110\$",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        // height: 1.5,
                                        color: Colors.grey.shade600),
                                  ),
                                  Text(
                                    "Per hour",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        // height: 1.5,
                                        color: Colors.grey.shade600),
                                  ),
                                ],
                              ),
                            ),
                            // rate
                            SizedBox(height: 20),
                            Container(
                              // color: Colors.amber.shade100,
                              padding: EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  Text(
                                    "Rate",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        // height: 1.5,
                                        color: Colors.grey.shade600),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber.shade700,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber.shade700,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber.shade700,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Mylistcard end
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
