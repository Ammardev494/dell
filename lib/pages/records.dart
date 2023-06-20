import 'package:doctorapp/main.dart';
import 'package:doctorapp/pages/blogs.dart';
import 'package:doctorapp/pages/health_tips.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: Records(),
  ));
}

class Records extends StatefulWidget {
  const Records({super.key});

  @override
  State<Records> createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Records'),
        centerTitle: true,
      ),
// body:
      body: Center(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

    


            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                            Container(
              width: 300,
              height: 40,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 216, 216, 218),
                  // border: Border.all(width: 10,color: Colors.red ,),
                  borderRadius: BorderRadius.all(Radius.elliptical(30, 30))),
            ),
            const SizedBox(
              width: 10,
            ),

            FloatingActionButton(
              onPressed:(){
                // print("Add record");
                },
              child: const Icon(Icons.my_library_add_rounded),
              
            ),
              ],
            ),


                //items 01
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 150,
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
                              height: 150,
                              width: 100,
                              color: const Color.fromARGB(255, 137, 136, 135),
                            ),
                            const Text(
                              " Record 1 ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 150,
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    padding: const EdgeInsets.only(top: 10),
                                    child: const Text(
                                      "Description is the pattern of narrative development that aims to make vivid a place. ",
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
                            ),
                          ],
                        ),
                      ]),
                ),


                //items 01
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 150,
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
                              height: 150,
                              width: 100,
                              color: const Color.fromARGB(255, 137, 136, 135),
                            ),
                            const Text(
                              " Record 2 ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 150,
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    padding: const EdgeInsets.only(top: 10),
                                    child: const Text(
                                      "Description is the pattern of narrative development that aims to make vivid a place. ",
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
                            ),
                          ],
                        ),
                      ]),
                ),


                //items 01
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 150,
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
                              height: 150,
                              width: 100,
                              color: const Color.fromARGB(255, 137, 136, 135),
                            ),
                            const Text(
                              " Record 3 ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 150,
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    padding: const EdgeInsets.only(top: 10),
                                    child: const Text(
                                      "Description is the pattern of narrative development that aims to make vivid a place. ",
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
                            ),
                          ],
                        ),
                      ]),
                ),


                //items 01
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 150,
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
                              height: 150,
                              width: 100,
                              color: const Color.fromARGB(255, 137, 136, 135),
                            ),
                            const Text(
                              " Record 4 ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 150,
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    padding: const EdgeInsets.only(top: 10),
                                    child: const Text(
                                      "Description is the pattern of narrative development that aims to make vivid a place. ",
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
                            ),
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
