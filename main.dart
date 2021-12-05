import 'package:flutter/material.dart';
import 'package:my_application/panel/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Pastry',
      home: Scaffold(
        body: Splash(),
      )
    );
  }
}