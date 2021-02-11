/// lib/presentation/home/pages/home_page.dart
import 'package:flutter/material.dart';
import './classement.dart';
import './duos.dart';

class Hoperace extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => Hoperace(),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorColor: Colors.red,
            labelColor: Colors.red,
            tabs: [
              Tab(
                text: "Classement",
              ),
              Tab(
                text: "Duos",
              ),
              Tab(
                text: "Thrombose",
              ),
            ],
          ),
          title: Text('Hoperace',
              style: TextStyle(
                //fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
        ),
        body: TabBarView(
          children: [
            Container(
              child: ListView.builder(
                itemCount: ChatModel.dummyData.length,
                itemBuilder: (context, index) {
                  ChatModel _model = ChatModel.dummyData[index];
                  return Column(
                    children: <Widget>[
                      Divider(
                        height: 12.0,
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 24.0,
                          backgroundImage: NetworkImage(_model.avatarUrl),
                        ),
                        title: Row(
                          children: <Widget>[
                            Text(_model.name,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 16.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              child: ListView.builder(
                itemCount: DuosModel.dummyData.length,
                itemBuilder: (context, index) {
                  DuosModel _model = DuosModel.dummyData[index];
                  return Column(
                    children: <Widget>[
                      Divider(
                        height: 12.0,
                      ),
                      ListTile(
                        title: Row(
                          children: <Widget>[
                            Text(_model.name,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 16.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    ));
  }
}
