/// lib/presentation/home/pages/home_page.dart
import 'package:flutter/material.dart';

class Hoperace extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => Hoperace(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Hoperace"),
      ),
      body: Center(
        child: Text("Hello, hoperace!"),
      ),
    );
  }
}
