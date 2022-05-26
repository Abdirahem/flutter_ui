import 'package:complete_app/login.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: Column(
              children: [
                // profile photo
                // name
                // title
                // list menu
                SizedBox(height: 50),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Account"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Setting"),
                ),
                ListTile(
                  leading: Icon(Icons.inventory_2_sharp),
                  title: Text("About"),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyLogn()));
                  },
                  leading: Icon(Icons.logout),
                  title: Text("Log out"),
                ),
              ],
            ),
          ),
        ));
  }
}
