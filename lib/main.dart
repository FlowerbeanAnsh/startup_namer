import 'package:flutter/material.dart';
import 'package:startup_namer/pages/LoginPage.dart';
import 'package:startup_namer/utils/routes.dart';
import 'pages/home_page.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) =>LoginPage(),
        MyRoutes.homeRoute:(context) => HomePage(),
        MyRoutes.loginRoute:(context)=> LoginPage(),
      },
    );
  }
}
