import 'package:flutter/material.dart';

import 'demande2.dart';
import 'demande1.dart';
import 'votre_age.dart';

class Age extends StatefulWidget {
  Age({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AgeState createState() => _AgeState();
}

class _AgeState extends State<Age> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ListView(children: <Widget>[
                  Image.asset('asstets/images/redhope.PNG'),
                  SizedBox(height: 30),
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
                        Text(" \n Avez vous vraiment ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        Text("25 ans ?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RaisedButton(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Color(0xFFFE43C3C))),
                              color: Colors.red,
                              textColor: Colors.white,
                              child: Text("OUI"),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Demande1()),
                                );
                              },
                            ),
                            SizedBox(width: 60),
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
                                      builder: (context) => VotreAge()),
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 80),
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
                                    builder: (context) => Demande1()),
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
