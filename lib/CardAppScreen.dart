import 'package:flutter/material.dart';

class CardAppScreen extends StatefulWidget {
  const CardAppScreen({super.key});

  @override
  State<CardAppScreen> createState() => _CardAppScreenState();
}

class _CardAppScreenState extends State<CardAppScreen> {
  bool changeColor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: changeColor ? const Color.fromARGB(255, 60, 60, 60) : const Color.fromARGB(255, 129, 85, 85),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              height: 40,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2022/07/29/02/42/man-7350920_1280.png'),
              radius: 100
            ),

          SizedBox(
            height: 20
          ),

          Text(
            "rdgl",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "QuickSand"
            ),
          ),

          SizedBox(
            height: 10
          ),

          Text(
            'SOFTWARE DEVELOPER',
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 4
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:100,right:100,top:10,bottom:10),
            child: Divider(
              thickness: 2,
              color: Colors.white,
            ),
          ),


            GestureDetector(
              onTap: (){
                setState(() {
                  changeColor = !changeColor;
                });
              },
              child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: Colors.white,
                child: Row(children: [
                  Icon(Icons.email,
                  color: Colors.teal,
                  ),
                  SizedBox(
                    width:20,
                  ),
                  Text('rdgl@email.com',
                   style: TextStyle(
                    fontSize:20,
                   )
                  )
                ],)
                
              ),
            ),

          GestureDetector(
            onTap: () {
              setState(() {
                changeColor = !changeColor;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              color: Colors.white,
              child: Row(
                children: [
                  Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('xxxxxxxx01',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              )
            ),
          )

        ],),
      );
  }
}

