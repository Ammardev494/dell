import 'package:flutter/material.dart';
// import 'package:app034/chatPage.dart';
// import 'package:app34/chat/chatPage.dart';
void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: blogs(),
  ));
}  

class blogs extends StatefulWidget {
  const blogs({super.key});

  @override
  State<blogs> createState() => _blogsState();
}

class _blogsState extends State<blogs> {
  @override
  
  Widget build(BuildContext context) {   
    return Scaffold(
      appBar: AppBar(       
        title: const Text('Details'),
        centerTitle: true,
      ),
// body: 
 body: Center(
          child:
           Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                        const SizedBox(height: 10,),
            Container(
height: 200,
width: 350,
color: Colors.grey,
            ),
const SizedBox(height: 10,),

const Text("Title",style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: Colors.black,)),
Container(
  width: 350,


child: const Text("SubTitle \n Description is the pattern of narrative development that aims to make vivid a place, object, character, or group. Description is one of four rhetorical modes, along with exposition, argumentation, and narration. In practice it would be difficult to write literature that drew on just one of the four basic modes."),

),
const SizedBox(height: 10,),

Container(
  height: 100,
  width: 150,
  color: Colors.grey,
),
const SizedBox(height: 10,),
 const Text(" In practice it would be difficult to write literature that drew on just one of the four basic modes."),

          ],
           )
 ),


    

  );
  }
}