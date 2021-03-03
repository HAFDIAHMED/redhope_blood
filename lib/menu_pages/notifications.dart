/// lib/presentation/home/pages/home_page.dart
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'demande_sang.dart';

class Notifi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicatorColor: Colors.red,
              labelColor: Colors.red,
              tabs: [
                Tab(
                  text: "Personnel",
                ),
                Tab(
                  text: "Demandes",
                ),
              ],
            ),
            title: Text('Nortifications',
                style: TextStyle(
                  //fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.outbox),
              Container(
                child: ListView(children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'asstets/images/as.png',
                        width: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "testeur a posté une demande de sang.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Aidez',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DemandeSang()),
                                ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'asstets/images/as.png',
                        width: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "testeur a posté une demande de sang.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Aidez',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DemandeSang()),
                                ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              //Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
