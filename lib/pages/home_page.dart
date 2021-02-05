import 'package:catelog_app/pages/settings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App"),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Settings();
              })
        ],
      ),
      body: Center(
        child: Text(
          "30 Days of Flutter",
          style: TextStyle(color: Colors.deepPurple[800]),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
