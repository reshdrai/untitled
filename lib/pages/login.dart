import 'package:flutter/material.dart';

import 'dashboardPage.dart';

class login extends  StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return loginState();
  }

}
class loginState extends State<login>{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
 return Scaffold(
   body: Container(
     width: size.width,
     child: Column(
       children: [
         Container(
           width: size.width/1.1,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Icon(Icons.house,size: 18, color: Colors.blue,),
               Icon(Icons.arrow_back,color: Colors.black,size: 18,)
             ],
           ),
         ),
         Container(
           height: size.height/3,
           width: size.width/1.1,
           decoration: BoxDecoration(
             color: Colors.green,
             borderRadius: BorderRadius.circular(20),
           ),
           child: Column(
             children: [
               SizedBox(height: 10,),
               Text("Sign In", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),),
               SizedBox(height: 20,),
               Container(
                 height: 35,
                 width: size.width/1.5,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(15)
                 ),
                 child:Center(
                 child: Text("Email", style: TextStyle(color: Colors.grey, fontSize: 12),),)
               ),
               SizedBox(height: 15,),
               Container(
                 height: 35,
                 width: size.width/1.5,
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(15)
                 ),
                 child:Center(
                 child: Text("Password", style: TextStyle(color: Colors.grey, fontSize: 12),),)
               ),
               SizedBox(height: 25,),
               GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => dashboardPage()),
                 );
               },
                 child: Container(
                   height: 40,
                   width: size.width/4,
                   decoration: BoxDecoration(
                       color: Colors.brown,
                       borderRadius: BorderRadius.circular(15)
                   ),

                   child:Center(

                   child: Text("Signin", style: TextStyle(color: Colors.grey, fontSize: 12),),)
                 ),
               )
             ],

           ),
         )
       ],
     ),
   )
 );
  }

}