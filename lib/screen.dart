import 'package:flutter/material.dart';

import 'demande1.dart';
import 'connexio.dart';

class Screen extends StatefulWidget {
  Screen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ListView(children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      Image.asset(
                        'asstets/images/redhope.PNG',
                        width: 250,
                      ),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red)),
                        color: Colors.red,
                        textColor: Colors.white,
                        child: Text("Suivant"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Connexion()),
                          );
                        },
                      ),
                      SizedBox(height: 300),
                      Image.asset('asstets/images/inoov_logo.PNG'),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
