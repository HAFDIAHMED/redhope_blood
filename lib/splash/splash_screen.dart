import 'dart:async';

import 'package:blood_app/connexio.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
    var duration = Duration(seconds: 8);
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
              child: Image.asset("asstets/images/redhope.PNG"),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              'Designed by',
              style: TextStyle(fontSize: 20.0, color: Colors.red),
            ),
            SizedBox(height: 40),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.red,
              strokeWidth: 2,
            ),
            InkWell(
              child: Container(
                child: Image.asset("asstets/images/inoov_logo.PNG"),
              ),
              onTap: () => launch("http://innoveducation.com/"),
            ),
            SizedBox(height: 40),
            Padding(padding: EdgeInsets.only(top: 20.0)),
          ],
        ),
      ),
    );
  }
}
