import 'package:flutter/material.dart';

import 'demande2.dart';
import 'demande_accident.dart';

class Groupe extends StatefulWidget {
  Groupe({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GroupeState createState() => _GroupeState();
}

class _GroupeState extends State<Groupe> {
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
                    //height: 400,
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
                        Text(" \n De quel",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text("groupe sanguin",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                        Text("avez vous besoin?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              //height: 80.0,
                              child: SizedBox.fromSize(
                                size: Size(60, 60), // button width and height
                                child: ClipOval(
                                  child: Material(
                                    color: Colors.red, // button color
                                    child: InkWell(
                                      splashColor:
                                          Color.fromRGBO(248, 177, 1, 1),
                                      // splash color
                                      onTap: () {},
                                      // button pressed
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          // icon
                                          Text(
                                            "O-",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ), // text
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              //height: 80.0,
                              child: SizedBox.fromSize(
                                size: Size(60, 60), // button width and height
                                child: ClipOval(
                                  child: Material(
                                    color: Colors.red, // button color
                                    child: InkWell(
                                      splashColor:
                                          Color.fromRGBO(248, 177, 1, 1),
                                      // splash color
                                      onTap: () {},
                                      // button pressed
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          // icon
                                          Text(
                                            "O+",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ), // text
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              //height: 80.0,
                              child: SizedBox.fromSize(
                                size: Size(60, 60), // button width and height
                                child: ClipOval(
                                  child: Material(
                                    color: Colors.red, // button color
                                    child: InkWell(
                                      splashColor:
                                          Color.fromRGBO(248, 177, 1, 1),
                                      // splash color
                                      onTap: () {},
                                      // button pressed
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          // icon
                                          Text(
                                            "AB-",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ), // text
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              //height: 80.0,
                              child: SizedBox.fromSize(
                                size: Size(60, 60), // button width and height
                                child: ClipOval(
                                  child: Material(
                                    color: Colors.red, // button color
                                    child: InkWell(
                                      splashColor:
                                          Color.fromRGBO(248, 177, 1, 1),
                                      // splash color
                                      onTap: () {},
                                      // button pressed
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          // icon
                                          Text(
                                            "A-",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ), // text
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              //height: 80.0,
                              child: SizedBox.fromSize(
                                size: Size(60, 60), // button width and height
                                child: ClipOval(
                                  child: Material(
                                    color: Colors.red, // button color
                                    child: InkWell(
                                      splashColor:
                                          Color.fromRGBO(248, 177, 1, 1),
                                      // splash color
                                      onTap: () {},
                                      // button pressed
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          // icon
                                          Text(
                                            "A+",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ), // text
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              //height: 80.0,
                              child: SizedBox.fromSize(
                                size: Size(60, 60), // button width and height
                                child: ClipOval(
                                  child: Material(
                                    color: Colors.red, // button color
                                    child: InkWell(
                                      splashColor:
                                          Color.fromRGBO(248, 177, 1, 1),
                                      // splash color
                                      onTap: () {},
                                      // button pressed
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          // icon
                                          Text(
                                            "AB+",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ), // text
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              //height: 80.0,
                              child: SizedBox.fromSize(
                                size: Size(60, 60), // button width and height
                                child: ClipOval(
                                  child: Material(
                                    color: Colors.red, // button color
                                    child: InkWell(
                                      splashColor:
                                          Color.fromRGBO(248, 177, 1, 1),
                                      // splash color
                                      onTap: () {},
                                      // button pressed
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          // icon
                                          Text(
                                            "B-",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ), // text
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              //height: 80.0,
                              child: SizedBox.fromSize(
                                size: Size(60, 60), // button width and height
                                child: ClipOval(
                                  child: Material(
                                    color: Colors.red, // button color
                                    child: InkWell(
                                      splashColor:
                                          Color.fromRGBO(248, 177, 1, 1),
                                      // splash color
                                      onTap: () {},
                                      // button pressed
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          // icon
                                          Text(
                                            "B+",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ), // text
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              //height: 80.0,
                              child: SizedBox.fromSize(
                                size: Size(60, 60), // button width and height
                                child: ClipOval(
                                  child: Material(
                                    color: Colors.red, // button color
                                    child: InkWell(
                                      splashColor:
                                          Color.fromRGBO(248, 177, 1, 1),
                                      // splash color
                                      onTap: () {},
                                      // button pressed
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          // icon
                                          Text(
                                            " ",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ), // text
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red)),
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Cotinuer"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DemandeAccident()),
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
