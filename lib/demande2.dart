import 'package:flutter/material.dart';

import 'demande1.dart';
import 'screen.dart';

class Demande2 extends StatefulWidget {
  Demande2({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Demande2State createState() => _Demande2State();
}

class _Demande2State extends State<Demande2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ListView(children: <Widget>[
                  Image.asset('asstets/images/redhope.PNG', width: 50),
                  Container(
                    height: 400,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        Center(
                            child: Text("  Pesez vous 2 moins  de 50 Kgs?",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold))),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RaisedButton(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.red)),
                              color: Colors.red,
                              textColor: Colors.white,
                              child: Text("OUI"),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Screen()),
                                );
                              },
                            ),
                            SizedBox(width: 80),
                            RaisedButton(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.red)),
                              color: Colors.red,
                              textColor: Colors.white,
                              child: Text("NON"),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Screen()),
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Center(
                          child: RaisedButton(
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
                                    builder: (context) => Screen()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Text("Retour",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold)));
  }
}
