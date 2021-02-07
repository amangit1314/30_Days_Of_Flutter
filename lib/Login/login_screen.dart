import 'package:catelog_app/Login/components/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final String phoneNo;

  const LoginScreen({Key key, this.phoneNo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Body(),
    );
  }
}
