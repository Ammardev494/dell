// import 'dart:ffi';
// import 'dart:ui';
import 'package:doctorapp/pages/services_pages/wait.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:doctorapp/main.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: Appointment(),
  ));
}

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

var radiusV = 10;

class _AppointmentState extends State<Appointment> {
  double widthC = 220;
  double heightC = 50;
  final _formKey = GlobalKey<FormState>();
  DateTime _dateTime = DateTime.now();
  String? _dateTimepic;
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _ageController = TextEditingController();
  final _genderController = TextEditingController();
  final _emailController = TextEditingController();
  final _symptomsController = TextEditingController();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _dateTime,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null && picked != _dateTime) {
      setState(() {
        _dateTime = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_dateTime),
    );
    if (picked != null) {
      setState(() {
        _dateTime = DateTime(
          _dateTime.year,
          _dateTime.month,
          _dateTime.day,
          picked.hour,
          picked.minute,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appointment'),
        centerTitle: true,
      ),




// body:
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: const Color.fromARGB(255, 238, 238, 238),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      // width: 500,
                      // height: 700,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          // border: Border.all(width: 10,color: Colors.red ,),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(30, 30))),
                      child: Column(children: [
                        const SizedBox(
                          width: 20,
                          height: 20,
                        ),
      
                        const Text(
                          "APPOINTMENT",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 200,
                              child: Text("\n   \tEnter Patient Details"),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              width: 160,
                              height: heightC,
                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.all(Radius.circular(50)),
                              //   color: Colors.blueAccent,
                              // ),
                              child: TextFormField(
                                readOnly: true,
                                onTap: () => {
                                  _selectDate(context),
                                  _dateTimepic = _dateTime.toString(),
                                  // print(_dateTimepic)
                                },
                                decoration: InputDecoration(
                                  labelText: 'Appointment Date',
                                  suffixIcon: const Icon(Icons.calendar_today),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                initialValue:
                                    '${_dateTime.toLocal()}'.split(' ')[0],
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please select a date';
                                  } else {}
                                },
                              ),
                            ),
                          ],
                        ),
      
                        ///////////////////////////////
                        const SizedBox(
                          width: 20,
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10),
      
                              width: 350,
                              // width: double.infinity,
                              height: heightC,
                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.all(Radius.circular(50)),
                              //   color: Colors.blueGrey,
      
                              // ),
      
                              child: TextField(
                                controller: _nameController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  labelText: 'Full Name',
                                  hintText: 'Ammar Ali',
                                  prefixIcon: const Icon(Icons.person),
                                  suffixIcon: IconButton(
                                    icon: const Icon(Icons.clear),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 160,
                              height: 50,
      
                              margin: const EdgeInsets.only(left: 6),
                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.all(Radius.circular(50)),
                              //   color: Colors.blueGrey,
                              // ),
                              child: TextField(
                                controller: _ageController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  labelText: 'Age',
                                  hintText: '18',
                                  prefixIcon: const Icon(Icons.numbers_outlined),
                                  suffixIcon: IconButton(
                                    icon: const Icon(Icons.clear),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              // margin: EdgeInsets.only(left: 8),
                              width: 170,
                              height: heightC,
                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.all(Radius.circular(50)),
                              //   color: Colors.blueGrey,
                              // ),
                              child: TextField(
                                controller: _genderController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  labelText: 'Gender',
                                  hintText: 'Male/Female',
                                  prefixIcon: const Icon(Icons.female),
                                  suffixIcon: IconButton(
                                    icon: const Icon(Icons.clear),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
      
                        ///////////////////////////////
      
                        ///////////////////////////////
                        const SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                               width: 350,
                             height: 50,
                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.all(Radius.circular(50)),
                              //   color: Colors.blueGrey,
                              // ),
                              child: TextField(
                                controller: _phoneController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  labelText: 'Contact',
                                  hintText: 'Phone Number',
                                  prefixIcon: const Icon(Icons.phone),
                                  suffixIcon: IconButton(
                                    icon: const Icon(Icons.clear),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // Container(
                        //   margin: EdgeInsets.only(left: 6),
                        //   width: 420,
                        //   height: c_height,
                        //   // decoration: BoxDecoration(
                        //   //   borderRadius: BorderRadius.all(Radius.circular(50)),
                        //   //   color: Colors.blueGrey,
                        //   // ),
                        //   child: TextField(
                        //     controller: _emailController,
                        //     decoration: InputDecoration(
                        //       border: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(8),
                        //       ),
                        //       labelText: 'Email Address',
                        //       hintText: 'example@email.com',
                        //       prefixIcon: Icon(Icons.email),
                        //       suffixIcon: IconButton(
                        //         icon: Icon(Icons.clear),
                        //         onPressed: () {},
                        //       ),
                        //     ),
                        //   ),
                        // ),
      
                        ///////////////////////////////
                        const SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 350,
                              height: 50,
                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.all(Radius.circular(50)),
                              //   color: Colors.blueGrey,
                              // ),
                              child: TextField(
                                // controller: _,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  labelText: 'City',
                                  hintText: 'Faisalabad',
                                  prefixIcon: const Icon(Icons.location_city),
                                  suffixIcon: IconButton(
                                    icon: const Icon(Icons.clear),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
      
                        ///////////////////////////////
                        const SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 8),
                              width: 350,
                              height: 50,
                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.all(Radius.circular(10)),
                              //   color: Colors.blueGrey,
                              // ),
                              child: TextField(
                                controller: _symptomsController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  labelText: 'Symptoms',
                                  hintText: 'Headache, Fever, Fatigue and etc.',
                                  prefixIcon: const Icon(Icons.medical_information),
                                  suffixIcon: IconButton(
                                    icon: const Icon(Icons.clear),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
      
                        const SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 8),
                              width: 350,
                              height: 50,
                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.all(Radius.circular(10)),
                              //   color: Colors.blueGrey,
                              // ),
                              child: TextField(
                                controller: _symptomsController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  labelText: 'Description',
                                  hintText:
                                      'like due to high fever and some other details as you feel etc.',
                                  prefixIcon: const Icon(Icons.description_outlined),
                                  suffixIcon: IconButton(
                                    icon: const Icon(Icons.clear),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
      
                        //////////////////////////////
                        Container(
                          height: 20,
                        ),
                        const SizedBox(
                              width: 350,
                          child:
                              Text("Note: Doctors clinic timings is 3pm to 9pm."),
                        ),
      
                        Container(
                          height: 20,
                        ),
      
                        SizedBox(
                          height: 40,
                          width: 100,
                          child: ElevatedButton(
                              onPressed: () {
                                saveData(
                                    _nameController.text,
                                    _ageController.text,
                                    _genderController.text,
                                    _emailController.text,
                                    _symptomsController.text,
                                    _phoneController.text,
                                    _dateTimepic);
                                Navigator.push(
                                    context,
                                    // MaterialPageRoute(builder: (context) => finddoctor()));
                                    MaterialPageRoute(
                                        builder: (context) => const Wait()));
                              },
                              child: const Text(
                                "Submit",
                                style: TextStyle(fontSize: 20),
                              )),
                        ),
                        const SizedBox(
                          width: 20,
                          height: 20,
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyData {
  final String name;
  final String gender;
  final String phone;
  final String email;
  final String symptoms;
  final String age;

  MyData({
    required this.name,
    required this.age,
    required this.symptoms,
    required this.email,
    required this.phone,
    required this.gender,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'gender': gender,
      'phone': phone,
      'email': email,
      'symptoms': symptoms,
    };
  }
}

void saveData(name, age, gender, email, symtopms, phone, date) {
  final db;
  db = FirebaseFirestore.instance;
  // final databaseRef = FirebaseDatabase.instance.ref().child('Appointment');
  // final data = MyData(name: name, age:age,symptoms: symtopms,email: email,phone: phone,gender:gender).toJson();
  // databaseRef.push().set(data);
  final user = <String, dynamic>{
    "fullname": name,
    "age": age,
    "phone": phone,
    "gender": gender,
    "email": email,
    "symptoms": symtopms,
    "date": date
  };
  db.collection("Appointment").add(user).then((DocumentReference doc) =>
      print('DocumentSnapshot added with ID: ${doc.id}')
      );
}


 