import 'package:blood_app/besoin_addresse.dart';
import 'package:flutter/material.dart';

import 'screen.dart';

class DemandeAccident extends StatefulWidget {
  DemandeAccident({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DemandeAccidentState createState() => _DemandeAccidentState();
}

class _DemandeAccidentState extends State<DemandeAccident> {
  Item selectedUser;
  List<Item> users = <Item>[
    const Item(
        'Accident',
        Icon(
          Icons.local_hospital_sharp,
          color: Colors.red,
        )),
    const Item(
        'Chirurgie',
        Icon(
          Icons.local_hospital_sharp,
          color: Colors.red,
        )),
    const Item(
        'Grossesse',
        Icon(
          Icons.local_hospital_sharp,
          color: Colors.red,
        )),
    const Item(
        'Anémie',
        Icon(
          Icons.local_hospital_sharp,
          color: Colors.red,
        )),
    const Item(
        'Thalassémie',
        Icon(
          Icons.local_hospital_sharp,
          color: Colors.red,
        )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ListView(children: <Widget>[
                  Image.asset('asstets/images/redhope.PNG', width: 10),
                  SizedBox(
                    height: 50,
                  ),
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
                        Text('\n\n'),
                        Text("   Pourquoi",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                        Text("vous demandez du sang  ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                        Center(
                          child: DropdownButton<Item>(
                            hint: Text("               "),
                            value: selectedUser,
                            onChanged: (Item Value) {
                              setState(() {
                                selectedUser = Value;
                              });
                            },
                            items: users.map((Item user) {
                              return DropdownMenuItem<Item>(
                                value: user,
                                child: Row(
                                  children: <Widget>[
                                    user.icon,
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      user.name,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: 200,
                        ),
                        Center(
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red)),
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Continuer "),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BesoinAddresse()),
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
        bottomNavigationBar: Text("Retour\n",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold)));
  }
}

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}

class DropdownScreen extends StatefulWidget {
  State createState() => DropdownScreenState();
}

class DropdownScreenState extends State<DropdownScreen> {
  Item selectedUser;
  List<Item> users = <Item>[
    const Item(
        'Android',
        Icon(
          Icons.android,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'Flutter',
        Icon(
          Icons.flag,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'ReactNative',
        Icon(
          Icons.format_indent_decrease,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'iOS',
        Icon(
          Icons.mobile_screen_share,
          color: const Color(0xFF167F67),
        )),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF167F67),
          title: Text(
            'Dropdown options',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: DropdownButton<Item>(
            hint: Text("Select item"),
            value: selectedUser,
            onChanged: (Item Value) {
              setState(() {
                selectedUser = Value;
              });
            },
            items: users.map((Item user) {
              return DropdownMenuItem<Item>(
                value: user,
                child: Row(
                  children: <Widget>[
                    user.icon,
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      user.name,
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
