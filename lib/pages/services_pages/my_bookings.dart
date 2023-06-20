import 'package:doctorapp/main.dart';
import 'package:doctorapp/pages/appointment.dart';
import 'package:doctorapp/pages/health_tips.dart';
import 'package:doctorapp/pages/home_page.dart';
import 'package:doctorapp/pages/records.dart';
import 'package:doctorapp/pages/sidemenubar.dart';
import 'package:flutter/material.dart';

// import 'package:app034/chatPage.dart';
// import 'package:app34/chat/chatPage.dart';
void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: MyBookings(),
  ));
}

class MyBookings extends StatefulWidget {
  const MyBookings({super.key});

  @override
  State<MyBookings> createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> {
  List<String> images = [
    "Assets/home_page/Service.jpg",
    "Assets/home_page/Pill Reminder.jpg",
    "Assets/home_page/Specialist.jpg",
    "Assets/home_page/Lab_Test.jpg",
    "Assets/home_page/My_Booking.jpg",

    // 'Assets/home_page/slider/p1.jpg',
    // 'Assets/home_page/slider/p2.jpg',
    // 'Assets/home_page/slider/p4.jpg',
    // 'Assets/home_page/slider/p5.jpg',

    // 'https://picsum.photos/1280/720?random=1',
    // 'https://picsum.photos/1280/720?random=2',
    // 'https://picsum.photos/1280/720?random=3',
    // 'https://picsum.photos/1280/720?random=4',
    // 'https://picsum.photos/1280/720?random=5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        // leading: Container( width: 30, height: 20, padding: EdgeInsets.all(6),  child:
        //   Text("Doctor App",),
        // ),
        // leading:
        actions: [
          InkWell(
              onTap: () {
                // print("Appointment.dart \t Appointment()");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Appointment()));
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.add_circle,
                    color: Color.fromARGB(255, 1, 210, 8),
                  ),
                  SizedBox(
                      height: 18, width: 100, child: Text(" Appointment")),
                ],
              )),

          // IconButton(
          //     onPressed: () {
          //       print("Finddoctor.dart \t finddoctor()");
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => finddoctor()));
          //     },
          //     icon: Icon(Icons.person_search)),

          // IconButton(
          //     onPressed: () {
          //           print("--.dart \t undefine()");
          //       // Navigator.push(
          //       //     context, MaterialPageRoute(builder: (context) => login()));
          //     },
          //     icon: Icon(Icons.location_on)),

          IconButton(
              onPressed: () {
                // print("sidemenubar.dart \t sidemenubar()");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const sidemenubar()));
              },
              icon: const Icon(Icons.menu)),

          // icon(Icons.menu)),
          // InkWell(
          //     onTap: () {
          //       print("sidemenubar.dart \t sidemenubar()");
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => sidemenubar()));
          //     },
          //     child: Icon(Icons.menu)),
          // IconButton(
          //     onPressed: () {
          //       print("Login.dart \t Login()");
          //       Navigator.push(
          //           context, MaterialPageRoute(builder: (context) => login()));
          //     },
          //     icon: Icon(Icons.login_outlined)),
        ],
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.

        title: const Text("Doctor App"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ///---///
              // SizedBox(
              //   height: 10,
              // ),
              // Container(
              //   width: 380,
              //   height: 200,
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 74, 108, 175),
              //       // border: Border.all(width: 10,color: Colors.red ,),
              //       borderRadius: BorderRadius.all(Radius.elliptical(10, 5))
              //       ),
              // ),
//               List<String> images = [
//   'https://picsum.photos/200/300?random=1',
//   'https://picsum.photos/200/300?random=5',
// ];
// Image.asset(    "Assets/home_page/slider/p.jpg",),

              // /---///
////////
// circles
              const SizedBox(
                height: 10,
              ),
// 1st row
              const SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <
                  Widget>[
                Column(
                  children: [

                    InkWell(
                                             onTap: () {
                  // print("health_store.dart \t health_store()");
                  Navigator.push(context,
                      // MaterialPageRoute(builder: (context) => finddoctor()));
                      MaterialPageRoute(builder: (context) => const HomePage()));
                },

                      child: Container(
                      
                        width: 100,
                        height: 100,
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 80,
                        ),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "Assets/home_page/My_Booking.jpg"),
                                fit: BoxFit.cover),
                            // image: DecorationImage(image: NetworkImage(images[1]),fit: BoxFit.cover),
                            color: Color.fromARGB(255, 183, 184, 186),
                            // border: Border.all(width: 10,color: Colors.red ,),
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10))),
                        // child: Text("Health Store", style: TextStyle(  color: Color.fromARGB(232, 136, 255, 0),fontWeight: FontWeight.bold)),
                      ),
                    ),
                 
                  ],
                ),
              ]),

              // Container(height: 10,),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
// bottomNavigationBar: BottomNavigationBar(items: [
//   BottomNavigationBarItem(icon: Icon(Icons.home )),
// ]),

      bottomNavigationBar: BottomNavigationBar(
        fixedColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromARGB(255, 169, 169, 169),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  // print("main.dart \t Myapp()");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyApp()));
                },
                child: const Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 255, 255, 255),
                )),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  // print("records.dart \t records()");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Records()));
                },
                child: const Icon(
                  Icons.data_saver_on_outlined,
                  color: Color.fromARGB(255, 255, 255, 255),
                )),
            label: 'Records',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  // print("Healthtips.dart \t healthtips()");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const healthtips()));
                },
                child: const Icon(
                  Icons.monitor_heart,
                  color: Color.fromARGB(255, 255, 255, 255),
                )),
            label: 'HealthCare',
          ),
        ],
      ), // IconButton(
//   onPressed: (){},
//   icon: Icon(Icons.home),
// ),
    );
  }
}
