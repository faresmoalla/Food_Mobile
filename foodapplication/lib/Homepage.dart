



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    

return Scaffold(
body: ListView(children: [
Container(
  color: Colors.white,
  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
  child: Row(children: [
    Icon(Icons.sort,size: 30,color: Color.fromARGB(255, 64, 168, 95),
    ),
    Padding(padding: EdgeInsets.only(left:20),child: Text("DP SHOP",style: TextStyle(fontSize: 23,fontWeight:FontWeight.bold,
    color: Color.fromARGB(255, 64, 168, 95) 
    ),
    
    ),
    
    ),
Spacer(),
 OutlinedButton(
        style:OutlinedButton.styleFrom( 
           primary: Colors.green,
               shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
           ),
                onPressed: (){
                   Navigator.pushReplacementNamed(context,"/login");
                   
               
              }, child: Text("Log In")
           
              ),
  ],

  ),
)

],),



);

  }



}