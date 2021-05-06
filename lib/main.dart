import 'package:flutter/material.dart';
import 'package:startup_namer/pages/LoginPage.dart';
import 'pages/home_page.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      routes: {
        "/": (context) =>LoginPage(),
        "/login":(context) => HomePage(),
      },
    );
  }
}
