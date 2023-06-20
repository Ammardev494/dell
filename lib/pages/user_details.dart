import 'dart:ui';
import 'package:flutter/material.dart';

// import 'package:app034/chatPage.dart';
// import 'package:app34/chat/chatPage.dart';
void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: user_details(),
  ));
}

class user_details extends StatefulWidget {
  const user_details({super.key});

  @override
  State<user_details> createState() => _user_detailsState();
}

class _user_detailsState extends State<user_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
        centerTitle: true,
      ),
// body:
      body: Center(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),

          Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
            // color: Colors.grey,
                        ),
            height: 100,
            width: 100,
            child: Icon(Icons.person_pin, size: 100, color:Colors.blueGrey,),
          ),
          SizedBox(
            height: 10,
          ),
          Text("User",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              )),
          Container(
            width: 350,
            child: Text(
                "Details \nDescription is the pattern of narrative development that aims to make vivid a place, object, character, or group. Description is one of four rhetorical modes, along with exposition, argumentation, and narration. In practice it would be difficult to write literature that drew on just one of the four basic modes."),
          ),
          SizedBox(
            height: 10,
          ),
          // Container(
          //   height: 100,
          //   width: 150,
          //   color: Colors.grey,
          // ),
          SizedBox(
            height: 10,
          ),
          // Text(
          //     " In practice it would be difficult to write literature that drew on just one of the four basic modes."),
        ],
      )),
    );
  }
}
