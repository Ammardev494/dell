
import 'package:doctorapp/main.dart';
import 'package:doctorapp/pages/health_tips.dart';
import 'package:flutter/material.dart';

// import 'package:app034/chatPage.dart';
// import 'package:app34/chat/chatPage.dart';
void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: Catogories(),
  ));
}

class Catogories extends StatefulWidget {
  const Catogories({super.key});

  @override
  State<Catogories> createState() => _CatogoriesState();
}

class _CatogoriesState extends State<Catogories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catogories'),
        centerTitle: true,
      ),
// body:
      body: Center(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

                      const SizedBox(height: 20,),

            // search bar
            Container(
              width: 350,
              height: 40,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 216, 216, 218),
                  // border: Border.all(width: 10,color: Colors.red ,),
                  borderRadius: BorderRadius.all(Radius.elliptical(30, 30))),
              
              child:   const TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    hintText: 'Search...',
  ),
),        

            ),

            const SizedBox(
              height: 10,
            ),

            //items
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                // row 1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                // row 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                // row 3
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                // row 4
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                // row 5
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                // row 5
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                // row 5
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                // row 5
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                // row 5
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                // row 5
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 187, 186, 184),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(30, 30)),
                      ),
                    ),
                  ],
                ),

                // Container(
                //   width: 350,
                //   height: 150,
                //   decoration: BoxDecoration(
                //       color: Color.fromARGB(255, 216, 216, 218),
                //       // border: Border.all(width: 10,color: Colors.red ,),
                //       borderRadius: BorderRadius.all(Radius.elliptical(0, 0))),
                //   child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: <Widget>[
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: <Widget>[],
                //         ),
                //       ]),
                // ),
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
