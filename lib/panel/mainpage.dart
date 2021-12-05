import 'package:flutter/material.dart';
import 'package:my_application/class/user.dart';
import 'package:my_application/panel/tab1.dart';
import 'package:my_application/panel/tab2.dart';
import 'package:my_application/panel/tab3.dart';

class MainPage extends StatefulWidget {
  final User user;
  const MainPage({Key? key, required this.user}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late List<Widget> tabchildren;
  int currentIndex = 1;
  String mainTab = "Product";
  late double screenHeight, screenWidth, resWidth;

  @override
  void initState() {
    super.initState();
    tabchildren = [
      Tab1(user: widget.user),
      Tab2(user: widget.user),
      Tab3(user: widget.user)
    ];
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth <= 600) {
      resWidth = screenWidth;
    } else {
      resWidth = screenWidth * 0.75;
    }

    return Scaffold(
      appBar: AppBar(title: const Text("MY PASTRY")),
      body: tabchildren[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _tabOn,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt, size: resWidth * 0.07), label: "Order"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_mall, size: resWidth * 0.07), label: "Product"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: resWidth * 0.07), label: "Profile"),
        ],
      ),
    );
  }

  void _tabOn(int index) {
    setState(() {
      currentIndex = index;
      if (currentIndex == 0) {
        mainTab = "Order";
      }
      if (currentIndex == 1) {
        mainTab = "product";
      }
      if (currentIndex == 2) {
        mainTab = "Profile";
      }
    });
  }
}
