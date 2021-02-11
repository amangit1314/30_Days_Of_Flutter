import 'package:catelog_app/pages/drawer_pages/saved.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Aman Soni"),
            accountEmail: Text("amansoni53453@gmail.com"),
            currentAccountPicture: Image.asset("assets/images/aman.png"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Your Account"),
            onTap: () {
              Saved();
            },
          ),
          ListTile(
            leading: Icon(Icons.save),
            title: Text("Saved"),
            onTap: () {
              Saved();
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              Saved();
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {
              Saved();
            },
          ),
        ],
      ),
    );
  }
}
