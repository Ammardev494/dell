import 'package:doctorapp/pages/home_page.dart';
import 'package:doctorapp/pages/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:doctorapp/main.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: login(),
  ));
}

class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
// body:
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[


          // Container(
          //   width: 300,
          //   height: 350,
          //   decoration: BoxDecoration(
          //       color: Color.fromARGB(255, 183, 184, 186),
          //       // border: Border.all(width: 10,color: Colors.red ,),
          //       borderRadius: BorderRadius.all(Radius.circular(80))),
          //     child: Image.asset("Assets/home_page/logo.jpg"),
          // ),

Container(
                        padding: EdgeInsets.only(left: 10, top: 80),
                        width: 180,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "Assets/home_page/logo.jpg"),
                                fit: BoxFit.cover),
                            // image: DecorationImage(image: NetworkImage(images[1]),fit: BoxFit.cover),
                            color: Color.fromARGB(255, 183, 184, 186),
                            // border: Border.all(width: 10,color: Colors.red ,),
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10))),
                        // child: Text("My Bookings"),
                      ),          
                      Container(
            height: 50,
          ),
          TextField(
            controller: _emailController,
            cursorHeight: 20,
            cursorWidth: 20,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Email or Id',
            ),
          ),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Pasword',
            ),
          ),
          Container(
            height: 10,
          ),
          // Container(
          //   height: 40,
          //   width: 150,
          //   decoration: BoxDecoration(
          //       color: Color.fromARGB(255, 96, 139, 224),
          //       borderRadius: BorderRadius.all(Radius.elliptical(30, 30))),
          // ),
          Container(
            height: 30,
          ),
          FloatingActionButton(
              child: Icon(Icons.login_outlined),
              onPressed: () async {
                try {
                  final credential = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailController.text,
                          password: _passwordController.text);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'user-not-found') {
                    print('No user found for that email.');
                  } else if (e.code == 'wrong-password') {
                    print('Wrong password provided for that user.');
                  }

                  print("main.dart \t MyApp()");
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MyApp()));
                }
              }),
          InkWell(
            child: Text("Didn't have an account Signup."),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpPage()));
            },
          )
        ],
      )),
    );
  }
}
