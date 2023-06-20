import 'dart:ui';
import 'package:doctorapp/main.dart';
import 'package:doctorapp/pages/finddoctor.dart';
import 'package:doctorapp/pages/Login.dart';
import 'package:doctorapp/pages/appointment.dart';
import 'package:doctorapp/pages/catogories.dart';
import 'package:doctorapp/pages/favlist.dart';
import 'package:doctorapp/pages/feedback.dart';
import 'package:doctorapp/pages/records.dart';
import 'package:doctorapp/pages/user_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: sidemenubar(),
  ));
}

class sidemenubar extends StatefulWidget {
  const sidemenubar({super.key});

  @override
  State<sidemenubar> createState() => _sidemenubarState();
}

const i_color = Colors.white;
// color: i_color
const double f_size = 16 ;

class _sidemenubarState extends State<sidemenubar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        centerTitle: true,
      ),


      body: Container(
        width: 288,
        height: double.infinity,
        color: Color(0xFF17203A),
        child: SafeArea(
          child: Column(
            children: [
              Container( margin: EdgeInsets.only(left:40),
                child: InkWell(
                onTap: () {
                  print("user_details.dart \tuser_details()");
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => user_details()
                      )                      );
                },
                  
                  child: ListTile(               
                    leading: CircleAvatar( 
                      child: Icon(CupertinoIcons.person),
                    ), // CircleAvatar
                    title: Text("User",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    subtitle: Text(
                      "user@gmail.com",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ), // ListTile
      
              // //////////////////////
      
              ///-----///
              SizedBox(
                height: 5,
              ),
              // InkWell(
              //     onTap: () {
              //       print("Find Doctor.dart \t Find Doctor()");
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => finddoctor()));
              //     },
              //     child: Row(
              //       children: [
              //         Container(
              //           height: 40,
              //           width: 40,
              //           margin: EdgeInsets.only(left: 10),
              //           decoration: BoxDecoration(
              //             // color: Colors.amber,
              //             borderRadius: BorderRadius.circular(100),
              //             border: Border.all(color: i_color, width: 1),
              //           ),
              //           child: Icon(
              //             Icons.search,
              //             color: i_color,
              //           ),
              //         ),
              //         Container(
              //           height: 50,
              //           // width: 200,
              //           margin: EdgeInsets.only(left: 10),
              //           padding: EdgeInsets.only(top: 12),
              //           decoration: BoxDecoration(
              //             // color: Colors.blueGrey,
              //             borderRadius: BorderRadius.circular(100),
              //             // border: Border.all(color: Colors.black, width: 1),
              //           ),
              //           child: Text(
              //             "Find Doctor",
              //             style: TextStyle(color: i_color, fontSize: f_size),
              //           ),
              //         ),
              //       ],
              //     )),
              ///-----///
      
              ///-----///
              SizedBox(
                height: 5,
              ),
              InkWell(
                  onTap: () {
                    print("appointment.dart \t appointment()");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Appointment()));
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: i_color, width: 1),
                        ),
                        child: Icon(
                          // Icons.touch_app_outlined,
                          Icons.control_point_duplicate_rounded,
                          color: i_color,
                        ),
                      ),
      
                      Container(
                        height: 50,
                        // width: 200,
                        margin: EdgeInsets.only(left: 10),
                        padding: EdgeInsets.only(top: 12),
                        decoration: BoxDecoration(
                          // color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(100),
                          // border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Text(
                          "Book Appointment",
                          style: TextStyle(color: i_color, fontSize: f_size),
                        ),
                      ),
                    ],
                  )),
      
              ///-----///
      
              // ///-----///
              // SizedBox(
              //   height: 5,
              // ),
              // InkWell(
              //     onTap: () {
              //       print("Catogories.dart \t catogories()");
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => catogories()));
              //     },
              //     child: Row(
              //       children: [
              //         Container(
              //           height: 40,
              //           width: 40,
              //           margin: EdgeInsets.only(left: 10),
              //           decoration: BoxDecoration(
              //             // color: Colors.amber,
              //             borderRadius: BorderRadius.circular(100),
              //             border: Border.all(color: i_color, width: 1),
              //           ),
              //           child: Icon(
              //             Icons.window_outlined,
              //             color: i_color,
              //           ),
              //         ),
              //         Container(
              //           height: 50,
              //           // width: 200,
              //           margin: EdgeInsets.only(left: 10),
              //           padding: EdgeInsets.only(top: 12),
              //           decoration: BoxDecoration(
              //             // color: Colors.blueGrey,
              //             borderRadius: BorderRadius.circular(100),
              //             // border: Border.all(color: Colors.black, width: 1),
              //           ),
              //           child: Text(
              //             "Catogories",
              //             style: TextStyle(color: i_color, fontSize: f_size),
              //           ),
              //         ),
              //       ],
              //     )),
      
              // ///-----///
      
              ///-----///
              SizedBox(
                height: 5,
              ),
              InkWell(
                  onTap: () {
                    print("records.dart \t records()");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Records()));
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: i_color, width: 1),
                        ),
                        child: Icon(
                          Icons.data_saver_on_outlined,
                          color: i_color,
                        ),
                      ),
                      Container(
                        height: 50,
                        // width: 200,
                        margin: EdgeInsets.only(left: 10),
                        padding: EdgeInsets.only(top: 12),
                        decoration: BoxDecoration(
                          // color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(100),
                          // border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Text(
                          "Records",
                          style: TextStyle(color: i_color, fontSize: f_size),
                        ),
                      ),
                    ],
                  )),
      
              ///-----///
      
              // ///-----///
              // SizedBox(
              //   height: 5,
              // ),
              // InkWell(
              //     onTap: () {
              //       print("favlist.dart \t fivlist()");
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => favlist()));
              //     },
              //     child: Row(
              //       children: [
              //         Container(
              //           height: 40,
              //           width: 40,
              //           margin: EdgeInsets.only(left: 10),
              //           decoration: BoxDecoration(
              //             // color: Colors.amber,
              //             borderRadius: BorderRadius.circular(100),
              //             border: Border.all(color: i_color, width: 1),
              //           ),
              //           child: Icon(
              //             Icons.favorite_outlined,
              //             color: i_color,
              //           ),
              //         ),
              //         Container(
              //           height: 50,
              //           // width: 200,
              //           margin: EdgeInsets.only(left: 10),
              //           padding: EdgeInsets.only(top: 12),
              //           decoration: BoxDecoration(
              //             // color: Colors.blueGrey,
              //             borderRadius: BorderRadius.circular(100),
              //             // border: Border.all(color: Colors.black, width: 1),
              //           ),
              //           child: Text(
              //             "Fav. List",
              //             style: TextStyle(color: i_color, fontSize: f_size),
              //           ),
              //         ),
              //       ],
              //     )),
      
              // ///-----///
              // ///-----///
              // SizedBox(
              //   height: 5,
              // ),
              // InkWell(
              //     onTap: () {
              //       print("-.dart \t undefined()");
              //       // Navigator.push(context,
              //       //     MaterialPageRoute(builder: (context) => finddoctor()));
              //     },
              //     child: Row(
              //       children: [
              //         Container(
              //           height: 40,
              //           width: 40,
              //           margin: EdgeInsets.only(left: 10),
              //           decoration: BoxDecoration(
              //             // color: Colors.amber,
              //             borderRadius: BorderRadius.circular(100),
              //             border: Border.all(color: i_color, width: 1),
              //           ),
              //           child: Icon(
              //             Icons.star_purple500_rounded,
              //             color: i_color,
              //           ),
              //         ),
              //         Container(
              //           height: 50,
              //           // width: 200,
              //           margin: EdgeInsets.only(left: 10),
              //           padding: EdgeInsets.only(top: 12),
              //           decoration: BoxDecoration(
              //             // color: Colors.blueGrey,
              //             borderRadius: BorderRadius.circular(100),
              //             // border: Border.all(color: Colors.black, width: 1),
              //           ),
              //           child: Text(
              //             "Rate it",
              //             style: TextStyle(color: i_color, fontSize: f_size),
              //           ),
              //         ),
              //       ],
              //     )),
              // ///-----///
      
              // ///-----///
              // SizedBox(
              //   height: 5,
              // ),
              // InkWell(
              //     onTap: () {
              //       print("feedback.dart \t feedback()");
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => feedback()));
              //     },
              //     child: Row(
              //       children: [
              //         Container(
              //           height: 40,
              //           width: 40,
              //           margin: EdgeInsets.only(left: 10),
              //           decoration: BoxDecoration(
              //             // color: Colors.amber,
              //             borderRadius: BorderRadius.circular(100),
              //             border: Border.all(color: i_color, width: 1),
              //           ),
              //           child: Icon(
              //             Icons.feedback_rounded,
              //             color: i_color,
              //           ),
              //         ),
              //         Container(
              //           height: 50,
              //           // width: 200,
              //           margin: EdgeInsets.only(left: 10),
              //           padding: EdgeInsets.only(top: 12),
              //           decoration: BoxDecoration(
              //             // color: Colors.blueGrey,
              //             borderRadius: BorderRadius.circular(100),
              //             // border: Border.all(color: Colors.black, width: 1),
              //           ),
              //           child: Text(
              //             "Give Feedback",
              //             style: TextStyle(color: i_color, fontSize: f_size),
              //           ),
              //         ),
              //       ],
              //     )),
              // ///-----///
      
              // ///-----///
              // SizedBox(
              //   height: 5,
              // ),
              // InkWell(
              //     onTap: () {
              //       print("-.dart \t undefined()");
              //       // Navigator.push(context,
              //       //     MaterialPageRoute(builder: (context) => finddoctor()));
              //     },
              //     child: Row(
              //       children: [
              //         Container(
              //           height: 40,
              //           width: 40,
              //           margin: EdgeInsets.only(left: 10),
              //           decoration: BoxDecoration(
              //             // color: Colors.amber,
              //             borderRadius: BorderRadius.circular(100),
              //             border: Border.all(color: i_color, width: 1),
              //           ),
              //           child: Icon(
              //             Icons.incomplete_circle_outlined,
              //             color: i_color,
              //           ),
              //         ),
              //         Container(
              //           height: 50,
              //           // width: 200,
              //           margin: EdgeInsets.only(left: 10),
              //           padding: EdgeInsets.only(top: 12),
              //           decoration: BoxDecoration(
              //             // color: Colors.blueGrey,
              //             borderRadius: BorderRadius.circular(100),
              //             // border: Border.all(color: Colors.black, width: 1),
              //           ),
              //           child: Text(
              //             "None",
              //             style: TextStyle(color: i_color, fontSize: f_size),
              //           ),
              //         ),
              //       ],
              //     )),
      
              // ///-----///
      
              ///-----///
              SizedBox(
                height: 5,
              ),
              InkWell(
                  onTap: () {
                    print("main.dart \tMyApp()");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: i_color, width: 1),
                        ),
                        child: Icon(
                          Icons.home_filled,
                          color: i_color,
                        ),
                      ),
                      Container(
                        height: 50,
                        // width: 200,
                        margin: EdgeInsets.only(left: 10),
                        padding: EdgeInsets.only(top: 12),
                        decoration: BoxDecoration(
                          // color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(100),
                          // border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Text(
                          "Home",
                          style: TextStyle(color: i_color, fontSize: f_size),
                        ),
                      ),
                    ],
                  )),
      
              ///-----///
      
              ///-----///
              SizedBox(
                height: 5,
              ),
              InkWell(
                  onTap: () {
                    print(" login.dart \t  login()");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: i_color, width: 1),
                        ),
                        child: Icon(
                          Icons.logout,
                          color: i_color,
                        ),
                      ),
                      Container(
                        height: 50,
                        // width: 200,
                        margin: EdgeInsets.only(left: 10),
                        padding: EdgeInsets.only(top: 12),
                        decoration: BoxDecoration(
                          // color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(100),
                          // border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Text(
                          "Log out",
                          style: TextStyle(color: i_color, fontSize: f_size),
                        ),
                      ),
                    ],
                  )),
      
              ///-----///
      
              // // //////////////////////
              // SizedBox(
              //   height: 5,
              // ),
              // InkWell(
              //   onTap: () {
              //     print("- - - \tnone()");
              //     // Navigator.push(
              //     //   context,
              //     //     MaterialPageRoute(builder: (context) => catogories()
              //     //     )                      );
              //   },
              //   child: ListTile(
              //     leading: SizedBox(
              //       height: 50,
              //       width: 50,
              //       child: const DecoratedBox(
              //         decoration: const BoxDecoration(
              //             borderRadius: BorderRadius.all(Radius.circular(100)),
              //             color: Color.fromARGB(255, 120, 120, 120)),
              //       ),
              //     ),
              //     title: Text(
              //       "none",
              //       style: TextStyle(color: Colors.white),
              //     ),
              //   ),
              // ),
      
              // SizedBox(
              //   height: 5,
              // ),
              // // //////////////////////
              // ),
            ],
          ), // Column
        ), // SafeArea
      ), // Container
    );
  }
}
