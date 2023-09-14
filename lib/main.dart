import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/screens/home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'To Do App',
      home: Home(),
    );
  }
}
