# Flutter_2023


# Section 1


## Basic Widget

<code>

import 'package:flutter/material.dart';

void main() {
  runApp(
    Text(
      "Hello World",
      textDirection: TextDirection.ltr,
    ),
  );
}

</code>

![image](https://user-images.githubusercontent.com/88712571/221627587-dd2351c0-cc42-401d-8566-2424c3f23087.png)

<code>

import 'package:flutter/material.dart';

void main() {
  runApp(Center(
    child: Text(
      "Hello World",
      textDirection: TextDirection.ltr,
    ),
  ));
}

</code>

![image](https://user-images.githubusercontent.com/88712571/221628096-f876756f-d7c6-490a-a260-1a6887890be2.png)

## Use Material Widget under MaterialApp for body

<code>

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "My Flutter Application",
      home: Material(
        color: Colors.lightGreenAccent,
        child: Center(
          child: Text(
            "SSA JI",
            style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold,color: Colors.white),
          ),
        ),
      ),
    ),
  );
}

</code>

![image](https://user-images.githubusercontent.com/88712571/221630225-e6ea209e-df89-477f-afcd-d7ae3c775f4f.png)

## use Scaffold for AppBar/NavBar

<code>

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My Flutter Application",
    home: Scaffold(
      appBar: AppBar(title: Text("First Flutter Application")),
      body: Material(
        color: Colors.lightBlueAccent,
        child: Center(
          child: Text(
            "Hola",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  ));
}

</code>

![image](https://user-images.githubusercontent.com/88712571/221631817-458c684d-7e8d-4396-a588-728b031f08f8.png)


# Organising Code - Using Stateless Widget Class

<code>


import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
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
              "Hola",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

</code>


![image](https://user-images.githubusercontent.com/88712571/221632694-c26ae912-dc75-46a5-ac2e-035ed64a3360.png)


# Splitting Files 

<code>

`main.dart`

import 'package:flutter/material.dart';
import 'package:flutter_learning/app_screens/first_screen.dart';

void main() => runApp(FirstScreen());

`first_screen.dart`

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
              "Hola",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

</code>

![image](https://user-images.githubusercontent.com/88712571/221634108-7721deef-e977-496a-927b-492ef159de93.png)


## Write Logic Code

<code>

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

## Check this out 

  String randomNumberGenerator() {
    var random = new Random().nextInt(10);

    return "Lucky Number is : $random";
  }
}


</code>

![image](https://user-images.githubusercontent.com/88712571/221638827-2401c312-876a-4e7d-a7c8-0b7ebda4b1d6.png)




