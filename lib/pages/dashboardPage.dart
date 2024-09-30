import 'package:flutter/material.dart';
import 'package:new_project/pages/newScreen.dart';

class dashboardPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return dashboardPageState();
  }
}

class dashboardPageState extends State<dashboardPage> {
  horizontalscrollitem(var size, int color){

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        height: size.height/5,
        width: size.width/1.5,
        decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadius.circular(15),

        ),
        child:ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network("https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp", fit: BoxFit.cover,),
      ),
    ),
    );
  }
  verticalscrollitem(var size, int color){
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: size.height/5,
            width: size.width/1.5,
            child: Row(
            children: [
              Column(

            children:[

              ClipRRect(

                borderRadius: BorderRadius.circular(15),
                child: Image.network("https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp", fit: BoxFit.cover,width: size.width/5,),
              ),

            ],
            ),

    Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text("THis is the part of class work"),
          Text("I am doing it rn"),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  print("hello");
                  return newScreen();
                }),
              );
            },
            child: Text("Click me"),
          ),
             Text('07/24/2024', style: TextStyle( fontSize: 10),),
           ],
          ),
        ],
        ),
      ),
    ),
            ],
            ),

            ),

          ),

      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Container(
              width: size.width,
            height: size.height/5,
            child: ListView.builder(
              itemCount: 100,
              scrollDirection: Axis.horizontal,

              itemBuilder: (context, index) {
                return horizontalscrollitem(size, 0xfffff555);
              },
            ),
            ),
            SizedBox(height: 10,),
            Container(
              height: size.height/1.5,
              child: ListView.builder(
                itemCount: 100,
                scrollDirection: Axis.vertical,

                itemBuilder: (context, index) {
                  return verticalscrollitem(size, 0xfffff555);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}