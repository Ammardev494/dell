import 'package:flutter/material.dart';
import 'package:doctorapp/pages/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';

//SIGNUP WIDGET
class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


Container(
                        padding: const EdgeInsets.only(left: 10, top: 80),
                        width: 180,
                        height: 200,
                        decoration: const BoxDecoration(
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
                      


              const Text(
                'Create a new account',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _nameController,
                // decoration: InputDecoration(
                // ),
                 decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),),
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),),
              ),
              TextFormField(
                controller: _usernameController,
                 decoration: InputDecoration(
                  labelText: 'User Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),),
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: !_showPassword,
                decoration: InputDecoration(
                   border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _showPassword ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () async {
               try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: _emailController.text,
    password: _passwordController.text,
  );
  // ignore: use_build_context_synchronously
  Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    // print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    // print('The account already exists for that email.');
  }
} catch (e) {
  // print(e);
}
                },
                child: const Text('Sign Up'),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  const SizedBox(width: 4.0),
                  GestureDetector(
                    onTap: () {
                      // Navigate to login page
                    },
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                      },
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

