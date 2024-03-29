import 'package:catelog_app/pages/cart_page.dart';
import 'package:catelog_app/pages/home_page.dart';
import 'package:catelog_app/pages/login_page.dart';
import 'package:catelog_app/utils/routes.dart';
import 'package:catelog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}

