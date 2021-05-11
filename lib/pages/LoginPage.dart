import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:startup_namer/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton = false;
  final form_key = GlobalKey<FormState>();
  moveToHome(BuildContext context) async{
    if(form_key.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(
          context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.white,
      child:Form(
        key: form_key,
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png",fit: BoxFit.fill),

            Text("Welcome $name",style:
            TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,

            ),
            ),
            SizedBox(
                height: 20.0
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:20,horizontal: 30),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter UserName",
                    labelText: "Username"
                  ),
                  validator: (value){
                    if(value.isEmpty){
                      return "Username can not be empty";
                    }
                  },
                  onChanged: (value){
                    name = value;
                    setState(() {

                    });
                  }
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter PassWord",
                    labelText: "PassWord",
                  ),
                  validator: (value){
                    if(value.isEmpty){
                      return "Password can not be empty";
                    }
                    else if(value.length<6) {
                      return "'Password's length can not be less the 6'";
                    }
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap:() => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton? 50 :150,
                    height: 40,
                    alignment:Alignment.center,
                    child : changeButton ?
                        Icon(
                          Icons.done,
                          color:Colors.white,

                        )
                        : Text("Login",style:
                        TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )


                      ),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                    ),
                  ),
                )
               /* ElevatedButton(
                  child: Text("Login"),
                  style: TextButton.styleFrom(minimumSize:Size(150,40)),
                  onPressed: (){
                     Navigator.pushNamed(context,MyRoutes.homeRoute);
                     },
                )*/
              ],),
            )
          ],


        ),
      )
    );
  }
}
