import 'package:doctorapp/main.dart';
import 'package:doctorapp/pages/health_tips.dart';
import 'package:flutter/material.dart';

// import 'package:app034/chatPage.dart';
// import 'package:app34/chat/chatPage.dart';
void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FindDoctor(),
  ));
}

class FindDoctor extends StatefulWidget {
  const FindDoctor({super.key});

  @override
  State<FindDoctor> createState() => _FindDoctorState();
}

class _FindDoctorState extends State<FindDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Doctors'),
        centerTitle: true,
      ),
// body:
      body: Center(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              height: 40,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 183, 184, 186),
                  // border: Border.all(width: 10,color: Colors.red ,),
                  borderRadius: BorderRadius.all(Radius.elliptical(30, 30))),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 100,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 216, 216, 218),
                  // border: Border.all(width: 10,color: Colors.red ,),
                  borderRadius: BorderRadius.all(Radius.elliptical(30, 30))),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 100,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 216, 216, 218),
                  // border: Border.all(width: 10,color: Colors.red ,),
                  borderRadius: BorderRadius.all(Radius.elliptical(30, 30))),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 100,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 216, 216, 218),
                  // border: Border.all(width: 10,color: Colors.red ,),
                  borderRadius: BorderRadius.all(Radius.elliptical(30, 30))),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 100,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 216, 216, 218),
                  // border: Border.all(width: 10,color: Colors.red ,),
                  borderRadius: BorderRadius.all(Radius.elliptical(30, 30))),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 216, 216, 218),
                      // border: Border.all(width: 10,color: Colors.red ,),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(30, 30))),
                ),
                Container(
                  width: 150,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 216, 216, 218),
                      // border: Border.all(width: 10,color: Colors.red ,),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(30, 30))),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 216, 216, 218),
                      // border: Border.all(width: 10,color: Colors.red ,),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(30, 30))),
                ),
                Container(
                  width: 150,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 216, 216, 218),
                      // border: Border.all(width: 10,color: Colors.red ,),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(30, 30))),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 216, 216, 218),
                      // border: Border.all(width: 10,color: Colors.red ,),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(30, 30))),
                ),
                Container(
                  width: 150,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 216, 216, 218),
                      // border: Border.all(width: 10,color: Colors.red ,),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(30, 30))),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 216, 216, 218),
                      // border: Border.all(width: 10,color: Colors.red ,),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(30, 30))),
                ),
                Container(
                  width: 150,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 216, 216, 218),
                      // border: Border.all(width: 10,color: Colors.red ,),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(30, 30))),
                ),
              ],
            ),
          ],
        ),
      )),

      bottomNavigationBar: BottomNavigationBar(
        // fixedColor:Color.fromARGB(1a, 2 r, 1 g, 1 b),
        fixedColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromARGB(255, 191, 191, 189),
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

          const BottomNavigationBarItem(
            icon: Icon(
              Icons.data_saver_on_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
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
    );
  }
}
