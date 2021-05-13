import 'package:flutter/material.dart';
import 'package:startup_namer/widgets/drawer.dart';


class HomePage extends StatelessWidget{
  final int days = 30;
  final String name = "Ansh";
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child:Text("Welcome to $days days of code by $name"),
        ),
      ),
      drawer:MyDrawer(),
    );

  }
}