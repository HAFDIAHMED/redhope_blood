import 'package:flutter/material.dart';

class DemandeSang extends StatefulWidget {
  DemandeSang({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DemandeSangState createState() => _DemandeSangState();
}

class _DemandeSangState extends State<DemandeSang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Demande de sang',
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
                      Text("Demande de sang",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      Row(children: [
                        Text("Besoin ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                        Text("                            ..... ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                      ]),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(children: [
                        Text("Groupage ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                        Text("                       .....",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                      ]),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(children: [
                        Text("Motif ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                        Text("                               .....",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                      ]),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(children: [
                        Text("Message :\n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                        Text("..... ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                      ]),
                      SizedBox(height: 80),
                      Center(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red)),
                          color: Colors.red,
                          textColor: Colors.white,
                          child: Text("Aider"),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: Stack(
                                      overflow: Overflow.visible,
                                      children: <Widget>[
                                        Positioned(
                                          right: -40.0,
                                          top: -40.0,
                                          child: InkResponse(
                                            onTap: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: CircleAvatar(
                                              child: Icon(Icons.close),
                                              backgroundColor: Colors.red,
                                            ),
                                          ),
                                        ),
                                        Form(
                                          //key: _formKey,
                                          child: Container(
                                            width: 260.0,
                                            height: 230.0,
                                            decoration: new BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: const Color(0xFFFFFF),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Text(
                                                    " Qu'est ce que je peux faire ? ",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                SizedBox(
                                                  height: 30,
                                                ),
                                                Text(" Donner du sang  ",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Divider(
                                                  color: Colors.black,
                                                ),
                                                Text(" Inviter un ami à aider ",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Divider(
                                                  color: Colors.black,
                                                ),
                                                Text("Partager",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
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
    );
  }
}
