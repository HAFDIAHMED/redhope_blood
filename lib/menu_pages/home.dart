import 'package:blood_app/besoin.dart';

/// lib/presentation/home/pages/home_page.dart
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'hoperace.dart';
import '../presentation1.dart';
import 'blog_page.dart';

class HomePage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => HomePage(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'asstets/images/redhope.PNG',
          width: 130,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
                color: Color(0xff333333),
              ),
              onPressed: () => {}),
        ],
      ),
      body: ListView(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
            //borderRadius: BorderRadius.circular(25),
          ),
          padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "                Besoin de sang?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Cliquez içi',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Besoin()),
                        ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
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
              Text(''),
              Text(" Salut Tester, \nVotre dernier don était depuis",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              Text("0 ans , 0 mois et 0 jours.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  )),
              Text('\n'),
              Text("Votre sang a pu sauver",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              Text("0 personnes.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  )),
              SizedBox(height: 30),
              Center(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Commencer le Test"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Presentation1()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
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
              Image.asset(
                'asstets/images/img28.jpg',
                width: 300,
              ),
              Text("le titre du blog titre titre titre  ",
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              Text(
                  "\nLorem ipsum dolor sit amet \n Lorem ipsum dolor sit amet \n Lorem ipsum dolor sit amet\n  Lorem ipsum dolor sit amet ",
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  )),
              SizedBox(height: 30),
              Center(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.green)),
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text("Lire la suite"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Blog()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
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
              Image.asset(
                'asstets/images/img28.jpg',
                width: 300,
              ),
              Text("le titre du blog titre titre titre  ",
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              Text(
                  "\nLorem ipsum dolor sit amet \n Lorem ipsum dolor sit amet \n Lorem ipsum dolor sit amet\n  Lorem ipsum dolor sit amet ",
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  )),
              SizedBox(height: 30),
              Center(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.blue)),
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Lire la suite"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Blog()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
