import 'package:blood_app/page/authPage.dart';
import 'package:blood_app/widget/background_painter.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';
import './screen.dart';
import './tabs/pages/tabs_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Connexion extends StatefulWidget {
  Connexion({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ConnexionState createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Image.asset('asstets/images/redhope.PNG', width: 250),
            SizedBox(
              height: 120,
            ),
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
                    MaterialPageRoute(builder: (context) => AuthPage()),
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
                    MaterialPageRoute(builder: (context) => TabsPage()),
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
                btnText: 'E-mail',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TabsPage()),
                  );
                })
          ]),
        ),
      ),
    ));
  }

  Widget buildLoading() => Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(painter: BackgroundPainter()),
          Center(child: CircularProgressIndicator()),
        ],
      );
}
