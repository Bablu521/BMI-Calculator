import 'package:bmi_calculator/screens/bmi_screen1.dart';
import 'package:bmi_calculator/screens/bmi_screen2.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "s2" : (context)=>Screen2()
      },
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}




