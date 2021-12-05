import 'package:flutter/material.dart';
import 'package:my_application/class/user.dart';

class Tab1 extends StatefulWidget {
  final User user;
  const Tab1({Key? key, required this.user}) : super(key: key);

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    );
  }
}