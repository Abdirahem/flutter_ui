import 'package:complete_app/homescreen.dart';
import 'package:complete_app/login.dart';
// import 'package:complete_app/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(IsCaawin());

class IsCaawin extends StatefulWidget {
  const IsCaawin({Key? key}) : super(key: key);

  @override
  State<IsCaawin> createState() => _IsCaawinState();
}

class _IsCaawinState extends State<IsCaawin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: MyLogn()),
    );
  }
}
