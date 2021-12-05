import 'package:flutter/material.dart';
import 'package:my_application/class/user.dart';

import 'register.dart';

class Tab3 extends StatefulWidget {
  final User user;
  const Tab3({Key? key, required this.user}) : super(key: key);

  @override
  State<Tab3> createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  late double screenHeight, screenWidth, resWidth = 0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth <= 600) {
      resWidth = screenWidth;
    } else {
      resWidth = screenWidth * 0.75;
    }

    return Center(
      child: Column(children: [
        Flexible(
          flex: 4,
          child: Container(),
        ),
        Flexible(
            flex: 6,
            child: Column(children: [
              Text("Prosonal Details",
                  style: TextStyle(
                      fontSize: resWidth * 0.06, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              Text("Name: " + widget.user.name.toString(),
                  style: TextStyle(fontSize: resWidth * 0.05)),
              const SizedBox(height: 10),
              Text("Phone: " + widget.user.phone.toString(),
                  style: TextStyle(fontSize: resWidth * 0.05)),
              const SizedBox(height: 10),
              Text("Email: " + widget.user.email.toString(),
                  style: TextStyle(fontSize: resWidth * 0.05)),
              const SizedBox(height: 10),
              Text("Locality: Pekan Nanas",
                  style: TextStyle(fontSize: resWidth * 0.05)),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () => {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Tab3(user: widget.user)))
                },
                child: Text(
                  "Edit",
                  style: TextStyle(
                    fontSize: resWidth * 0.045,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: null,
                    child: Text("Change Password",
                        style: TextStyle(fontSize: resWidth * 0.04)),
                  ),
                  SizedBox(width: resWidth * 0.03),
                  ElevatedButton(
                    onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const Register())),
                    child: Text("Register",
                        style: TextStyle(fontSize: resWidth * 0.04)),
                  ),
                ],
              ),
            ]))
      ]),
    );
  }
}
