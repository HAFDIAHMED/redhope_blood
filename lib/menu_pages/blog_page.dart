/// lib/presentation/home/pages/home_page.dart
import 'package:flutter/material.dart';

class Blog extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => Blog(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("le titre du blog", style: TextStyle(color: Colors.black)),
      ),
      body: ListView(children: <Widget>[
        Image.asset(
          'asstets/images/img28.jpg',
          width: 300,
        ),
        Center(
          child: Text("  le titre du blog",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
        ),
        Row(children: <Widget>[
          SizedBox(
            width: 90,
          ),
          Image.asset(
            'asstets/images/as.png',
            width: 50,
          ),
          SizedBox(
            width: 10,
          ),
          Text(" Ecrit par Testeur",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              )),
          PopupMenuButton(
            itemBuilder: (BuildContext bc) => [
              PopupMenuItem(child: Text("Enregistrer"), value: "/newchat"),
              PopupMenuItem(child: Text("Partager"), value: "/new-group-chat"),
              PopupMenuItem(child: Text("Signaler"), value: "/settings"),
            ],
            onSelected: (route) {
              print(route);
              // Note You must create respective pages for navigation
              Navigator.pushNamed(context, route);
            },
          ),
        ]),
        Text(
            "\n     Lorem ipsum dolor sit amet\n     Lorem ipsum dolor sit amet\n     Lorem ipsum dolor sit amet\n     Lorem ipsum dolor sit amet\n     Lorem ipsum dolor sit amet",
            //textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
        Text(
            "\n     Lorem ipsum dolor sit amet\n     Lorem ipsum dolor sit amet\n     Lorem ipsum dolor sit amet\n     Lorem ipsum dolor sit amet\n     Lorem ipsum dolor sit amet",
            //textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              //fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
        Text(
            "\n     Lorem ipsum dolor sit amet\n     Lorem ipsum dolor sit amet\n     Lorem ipsum dolor sit amet\n     Lorem ipsum dolor sit amet\n     Lorem ipsum dolor sit amet",
            //textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
        Text(
            "\n     Lorem ipsum dolor sit amet\n     Lorem ipsum dolor sit amet\n     Lorem ipsum dolor sit amet\n     Lorem ipsum dolor sit amet\n     Lorem ipsum dolor sit amet",
            //textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              //fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ]),
    );
  }
}
