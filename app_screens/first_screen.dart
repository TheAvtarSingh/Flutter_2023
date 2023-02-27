import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Flutter Application",
      home: Scaffold(
        appBar: AppBar(title: Text("First Flutter Application")),
        body: Material(
          color: Colors.lightBlueAccent,
          child: Center(
            child: Text(
              randomNumberGenerator(),
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  String randomNumberGenerator() {
    var random = new Random().nextInt(10);

    return "Lucky Number is : $random";
  }
}
