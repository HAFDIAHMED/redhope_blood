import 'dart:async';

import 'package:blood_app/connexio.dart';
import 'package:flutter/material.dart';
import 'second_screen.dart';
import '';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Connexion()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("asstets/images/logo_redhope.jpg"),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              "Welcome to redHope",
              style: TextStyle(fontSize: 20.0, color: Colors.red),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.red,
              strokeWidth: 2,
            )
          ],
        ),
      ),
    );
  }
}
