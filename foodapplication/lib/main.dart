import 'package:flutter/material.dart';
import 'package:foodapplication/Homepage.dart';
import 'package:foodapplication/authentification/Register.dart';
import 'package:foodapplication/authentification/login.dart';
import 'package:foodapplication/signin.dart';
import 'package:foodapplication/theme.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
return  MaterialApp(
  debugShowCheckedModeBanner: false,

  title: "Welcome Fares",

  theme: ThemeData(
    scaffoldBackgroundColor: Colors.white
  ) ,

  
  //home : MyApp(),
routes : {
    "/": (context)=> Homepage()  ,
    "/login"   :  (context)=> Login() ,
    "/register" : ((context) => Register())
   // "/bottomnav" : (context)=> BottomNav(),
   // "/tabinterface" : (context)=> Tabinterface()
    
    
  }
  
);


  }



}
