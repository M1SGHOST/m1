// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const M1());
}

class M1 extends StatelessWidget {
  const M1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'M1',
      debugShowCheckedModeBanner: false,
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundColor: Colors.black,
            backgroundImage: AssetImage("assets/images/me.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Mina Albeir",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("flutter developer",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          contactcard(
            contactText: "01276043008",
            url: "tel:+2001276043008",
            iconData: Icons.phone,
          ),
          contactcard(
            contactText: "newone201099@gmail.com",
            url: "mailto:newone201099@gmail.com?" "subject=" "&body=",
            iconData: Icons.mail_outline,
          ),
          contactcard(
            contactText: "M1SGHOST",
            url: "https://github.com/M1SGHOST",
            iconData: FontAwesomeIcons.github,
          ),
          contactcard(
            contactText: "facebook",
            url: "https://www.facebook.com/mina.alber.796",
            iconData: FontAwesomeIcons.facebookSquare,
          ),
        ],
      ),
    )));
  }
}

class contactcard extends StatelessWidget {
  void _launchURL(String _url) async {
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }

  final String contactText, url;
  final iconData;

  const contactcard(
      {required this.contactText, required this.iconData, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 5,
        color: Colors.black,
        child: ListTile(
          onTap: () {
            _launchURL(url);
          },
          leading: Icon(
            iconData,
            color: Colors.white,
          ),
          title: Text(
            contactText,
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
