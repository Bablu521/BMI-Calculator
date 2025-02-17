import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    var bmi = ModalRoute.of(context)!.settings.arguments as double;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0a0e21),
          title: Text(
            "BMI Calculator",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Color(0xFF0a0e21),
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      "Your Result",
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  )),
              Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF1d1e33),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                            child: Center(
                          child: Text(
                            bmi < 18.5
                                ? "UNDER WEIGHT"
                                : bmi < 25
                                    ? "NORMAL"
                                    : bmi < 30
                                        ? "OVER WEIGHT"
                                        : bmi < 35
                                            ? "OBESE"
                                            : "EXTREMELY OBESE",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: bmi < 18.5
                                  ? Colors.blue
                                  : bmi < 25
                                      ? Colors.green
                                      : bmi < 30
                                          ? Colors.yellow
                                          : bmi < 35
                                              ? Colors.orange
                                              : Colors.red,
                            ),
                          ),
                        )),
                        Expanded(
                            child: Center(
                                child: Text(
                                  "$bmi",
                                  style: TextStyle(
                                    fontSize: 100,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ))),
                        Expanded(
                            child: Center(
                          child: Text(
                            bmi < 18.5
                                ? "Your body weight is Lower than the recommended weight. \n eat foods with enough energy to gain weight, protein to repair your body and build your muscles, and vitamins and minerals to make you healthy."
                                : bmi < 25
                                    ? "You have a Normal body weight. \n Good job 🎉"
                                    : "Your body weight is Higher than the recommended weight. \n eat a balanced, calorie-controlled diet as recommended by your GP and take up activities such as fast walking, jogging, swimming or tennis.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ))
                      ],
                    ),
                  )),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Color(0XFFeb1555),
                  child: Text(
                    "Re-Calculate",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
