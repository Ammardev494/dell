import 'package:flutter/material.dart';

class Fever extends StatefulWidget {
  const Fever({super.key});

  @override
  State<Fever> createState() => _FeverState();
}

class _FeverState extends State<Fever> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fever Details'),
        centerTitle: true,
      ),
// body:
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
            child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              width: 350,
              // color: Colors.grey,
              child: Image.asset("Assets/home_page/health_care/fever2.jpg"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Fever",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                )),
            SizedBox(
              width: 350,
              child: Column(
                children: [
                  const Text(
                      "Overview\nA fever is a temporary rise in body temperature. It's one part of an overall response from the body's immune system. A fever is usually caused by an infection. \n For most children and adults, a fever may be uncomfortable. But it usually isn't a cause for concern. For infants, however, even a low fever may mean there's a serious infection. \nFevers generally go away within a few days. A number of over-the-counter medications lower a fever. But you don't necessarily need to treat a fever if it's not causing discomfort."),
                  SizedBox(
                    height: 100,
                    width: 150,
                    // color: Colors.grey,
                    child:
                        Image.asset("Assets/home_page/health_care/fever.jpg"),
                  ),
                  const Text("Symptoms",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      )),
                  const Text(
                      "Body temperatures vary slightly from person to person and at different times of day. The average temperature has traditionally been defined as 98.6 F (37 C). A temperature taken using a mouth thermometer (oral temperature) that's 100 F (37.8 C) or higher is generally considered to be a fever. \nDepending on what's causing a fever, other fever signs and symptoms may include: "),
                  const Text(
                      "* Sweating\n* Chills and shivering\n* Headache\n* Muscle aches\n* Loss of appetite\n* Irritability\n* Dehydration\n* General weakness"),
                  const Text("\nTreating fever in a child",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      )),
                  const Text(
                      "Encourage your child to drink fluids\nDress your child in lightweight clothing.\nUse a light blanket if your child feels chilled, until the chills end.\nDon't give aspirin to children or teenagers.\nDon't give an infant any type of pain reliever until after you've contacted a doctor and your child has been evaluated.\nIf your child is 6 months old or older, give your child acetaminophen (Tylenol, others) or ibuprofen (Advil, Motrin, others). \nRead the label carefully for proper dosing. "),
                  const Text("\nTreating fever in an adult",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      )),
                  const Text(
                      "Adults with fevers of 103 F (39.4 C) or higher will generally look and act sick. The main goal of treatment is to relieve discomfort and help you get rest. \nTo treat a fever at home: \nDrink plenty of fluids to stay hydrated.\nDress in lightweight clothing.\nUse a light blanket if you feel chilled, until the chills end.\nTake acetaminophen (Tylenol, others) or ibuprofen (Advil, Motrin IB, others). "),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        )),
      ),
    );
  }
}
