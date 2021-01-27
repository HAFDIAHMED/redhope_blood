import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';
import './demande1.dart';
import './screen.dart';
import './presentation1.dart';
import 'age.dart';
import 'groupe_sanguin.dart';
import './votre_age.dart';
import 'besoin.dart';
import 'besoin_panel.dart';
import 'demande_accident.dart';
import './tabs/pages/tabs_page.dart';
import 'connexio.dart';
import 'popup.dart';
import 'operation.dart';
import 'splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ListView(children: <Widget>[
            Image.asset('asstets/images/logo_redhope.jpg'),
            SignInButton(
                buttonType: ButtonType.google,
                imagePosition: ImagePosition.left,
                buttonSize: ButtonSize.large,
                btnTextColor: Colors.grey,
                btnColor: Colors.white,
                width: 140,
                btnText: 'Google',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen()),
                  );
                }),
            SizedBox(
              height: 40,
            ),
            SignInButton(
                buttonType: ButtonType.facebook,
                imagePosition: ImagePosition.left,
                buttonSize: ButtonSize.large,
                btnTextColor: Colors.grey,
                btnColor: Colors.white,
                width: 140,
                btnText: 'Facebook',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen()),
                  );
                }),
            SizedBox(
              height: 40,
            ),
            SignInButton(
                buttonType: ButtonType.mail,
                imagePosition: ImagePosition.left,
                buttonSize: ButtonSize.large,
                btnTextColor: Colors.grey,
                btnColor: Colors.white,
                width: 140,
                btnText: 'email',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen()),
                  );
                })
          ]),
        ),
      ),
    ));
  }
}
