// import 'dart:ffi';
// import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:doctorapp/main.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: feedback(),
  ));
}

class feedback extends StatefulWidget {
  const feedback({super.key});


  @override
  State<feedback> createState() => _feedbackState();
}


var Radius_v=10;

class _feedbackState extends State<feedback> {
  double c_width = 190;
  double c_height= 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('feedback'),
        centerTitle: true,
      ),

///---///
      body: Center(
        child: Container(
          width: 400,
          height: 700,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 183, 184, 186),
              // border: Border.all(width: 10,color: Colors.red ,),
              borderRadius: BorderRadius.all(Radius.elliptical(30, 30))),
          child: Column(children: [

// ///////////////////////////////          
            SizedBox(
              width: 10,
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: c_width,
                  height: c_height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.blueGrey,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 180,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
            
///////////////////////////////          
            SizedBox(
              width: 10,
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 380,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),

//////////////////////////////

            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 100, top: 20),
                  width: c_width,
                  height: c_height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),

          Container(
            height: 30,
          ),
          FloatingActionButton(
              child: Icon(Icons.login_outlined),
              onPressed: () {
                print("main.dart \t MyApp()");
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              }),


          ]),
        ),
      ),
    );
  }
}
