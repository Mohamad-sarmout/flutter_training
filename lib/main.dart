import 'package:flutter/material.dart';
import 'package:bambogeeks/HomeScreen.dart';
import 'package:bambogeeks/ListViewWidget.dart';
import 'package:bambogeeks/LoginScreen.dart';
import 'package:bambogeeks/TabbarWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: TabbarWidget(0),
    );
  }
}
