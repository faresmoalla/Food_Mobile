


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Register extends StatefulWidget{
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {





  @override
  Widget build(BuildContext context) {
  return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
            children: <Widget>[
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors:[
                          Color(0x665ac18e),
                          Color(0x995ac18e),
                          Color(0xcc5ac18e),
                          Color(0xff5ac18e),
                        
                      ]
                    )
                  ),
                 child:  SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                  ),
 child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Sign In",style: TextStyle(color: Colors.white,   fontSize: 40, fontWeight: FontWeight.bold    ),),
                       SizedBox(height: 50),
                    
                       OutlinedButton(
        style:OutlinedButton.styleFrom( 
           primary: Colors.green,
               shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
           ),
                onPressed: (){
                   Navigator.pushReplacementNamed(context,"/register");
                   
               
              }, child: Text("register")
           
              ),

                    ],
                  ),

                 ),


                )
              
            ],

        ),
      ),
    );  



  }




}