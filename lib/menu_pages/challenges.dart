import 'package:flutter/material.dart';

class Challenge extends StatefulWidget {
  Challenge({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ChallengeState createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Hoperace Challanges',
            style: TextStyle(
              //fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ListView(children: <Widget>[
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
                      Text("Challenges",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      Row(children: [
                        Text("Inviter un ami ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                      ]),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(children: [
                        Text("Partager l'application ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                      ]),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(children: [
                        Text("Faire un don ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                      ]),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(children: [
                        Text("Noter l'application ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                      ]),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(children: [
                        Text("Créer une équipe ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                      ]),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(children: [
                        Text("Lire un article",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                      ]),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(children: [
                        Text("Suivez nous",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                      ]),
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
