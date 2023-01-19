import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
class Login extends   StatefulWidget{



  @override
  State<Login> createState() => _LoginState();
}
Widget InputPassword(){
                  return    Column(
                        crossAxisAlignment: CrossAxisAlignment.start  ,
                        children:<Widget> [
                          Text("Password",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          )),
                          SizedBox(height: 10),
                          Container(alignment: Alignment.centerLeft,decoration: BoxDecoration(
                            color: Colors.white,borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0,2)

                              ),

                            ]
                          ),
                          height: 60,
                          child: TextField(
                            obscureText: true,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.black87
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top:14),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Color(0xff5ac18e),
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                color : Colors.black38
                              ) 
                            ),
                          ),
                          )
                        ],
                      );
}

Widget EmailInput(){
                  return    Column(
                        crossAxisAlignment: CrossAxisAlignment.start  ,
                        children:<Widget> [
                          Text("Email",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          )),
                          SizedBox(height: 10),
                          Container(alignment: Alignment.centerLeft,decoration: BoxDecoration(
                            color: Colors.white,borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0,2)

                              ),

                            ]
                          ),
                          height: 60,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.black87
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top:14),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Color(0xff5ac18e),
                              ),
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                color : Colors.black38
                              ) 
                            ),
                          ),
                          )
                        ],
                      );
}










class _LoginState extends State<Login> {

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
                       EmailInput(),
                       InputPassword(),
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