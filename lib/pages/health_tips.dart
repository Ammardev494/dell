import 'package:doctorapp/main.dart';
import 'package:doctorapp/pages/blogs.dart';
import 'package:doctorapp/pages/records.dart';
import 'package:doctorapp/pages/services_pages/healthcare/fever.dart';
import 'package:flutter/material.dart';



class healthtips extends StatefulWidget {
  const healthtips({super.key});

  @override
  State<healthtips> createState() => _healthtipsState();
}

class _healthtipsState extends State<healthtips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                // print("blogs.dart \t blogs()");
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const blogs()));
              },
              icon: const Icon(Icons.arrow_forward_sharp)),
        ],
        title: const Text('Health Care'),
        centerTitle: true,
      ),
// body:
      body: Center(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
// Image.asset("Assets/home_page/health_care/p1.jpg"),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              height: 40,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 216, 216, 218),
                  // border: Border.all(width: 10,color: Colors.red ,),
                  borderRadius: BorderRadius.all(Radius.elliptical(30, 30))),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//items 01
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 170,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 216, 216, 218),
                      // border: Border.all(width: 10,color: Colors.red ,),
                      borderRadius: BorderRadius.all(Radius.elliptical(0, 0))),
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 90,
                              width: 160,
                              // color: Color.fromARGB(255, 137, 136, 135),
                              child: Image.asset(
                                  "Assets/home_page/health_care/fever2.jpg"),
                            ),
                            const Text(
                              "   Fever ",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              width: 300,
                              child: const Text(
                                "A fever is a temporary rise in body temperature. It's one part of an overall response from the body's immune system.",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  // print("fever.dart \t fever()");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Fever()));
                                },
                                icon: const Icon(Icons.arrow_forward_sharp)),
                          ],
                        ),
                      ]),
                ),

//items 02
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 170,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 216, 216, 218),
                      // border: Border.all(width: 10,color: Colors.red ,),
                      borderRadius: BorderRadius.all(Radius.elliptical(0, 0))),
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 90,
                              width: 160,
                              color: const Color.fromARGB(255, 137, 136, 135),
                            ),
                            const Text(
                              "   Title 2",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                            const Text(
                              "\n \n subtitle",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 300,
                              child: Text(
                                "Description of blog or Description is the pattern of narrative development that aims to make vivid a place, object. character, or group. ",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  // print("blogs.dart \t blogs()");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const blogs()));
                                },
                                icon: const Icon(Icons.arrow_forward_sharp)),
                          ],
                        ),
                      ]),
                ),

                //items 03
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 170,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 216, 216, 218),
                      // border: Border.all(width: 10,color: Colors.red ,),
                      borderRadius: BorderRadius.all(Radius.elliptical(0, 0))),
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 90,
                              width: 160,
                              color: const Color.fromARGB(255, 137, 136, 135),
                            ),
                            const Text(
                              "   Title 3",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                            const Text(
                              "\n \n subtitle",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 300,
                              child: Text(
                                "Description of blog or Description is the pattern of narrative development that aims to make vivid a place, object. character, or group. ",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  // print("blogs.dart \t blogs()");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const blogs()));
                                },
                                icon: const Icon(Icons.arrow_forward_sharp)),
                          ],
                        ),
                      ]),
                ),

                //items 04
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 170,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 216, 216, 218),
                      // border: Border.all(width: 10,color: Colors.red ,),
                      borderRadius: BorderRadius.all(Radius.elliptical(0, 0))),
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 90,
                              width: 160,
                              color: const Color.fromARGB(255, 137, 136, 135),
                            ),
                            const Text(
                              "   Title 4",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                            const Text(
                              "\n \n subtitle",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 300,
                              child: Text(
                                "Description of blog or Description is the pattern of narrative development that aims to make vivid a place, object. character, or group. ",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  // print("blogs.dart \t blogs()");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const blogs()));
                                },
                                icon: const Icon(Icons.arrow_forward_sharp)),
                          ],
                        ),
                      ]),
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
    );
  }
}
