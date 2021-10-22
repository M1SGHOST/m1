// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const M1());
}

class M1 extends StatelessWidget {
  const M1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'M1',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.black,
            backgroundImage: AssetImage("assets/images/me.jpg"),
          ),
          Text("Mina Albeir",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          Text("flutter developer", style: TextStyle(fontSize: 18)),
        ],
      ),
    )));
  }
}
