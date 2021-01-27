/// lib/presentation/home/pages/home_page.dart
import 'package:flutter/material.dart';

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
              Icon(Icons.person),
              Icon(Icons.outbox),
              //Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
