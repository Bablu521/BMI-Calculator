import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;
  double height = 177;
  int weight = 70;
  int minWeight = 1;
  int maxWeight = 250;
  int age = 20;
  int minAge = 1;
  int maxAge = 130;
  double bmi = 0;
  @override
  Widget build(BuildContext context) {
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
          child: Column(
            children: [
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      splashColor: Colors.blue,
                      onTap: () {
                        setState(() {
                          isMaleSelected = !isMaleSelected; // Toggle color
                          isFemaleSelected = false;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: isMaleSelected ? Colors.blue : Color(0xFF1d1e33),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 80,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      splashColor: Colors.pink,
                      onTap: () {
                        setState(() {
                          isFemaleSelected = !isFemaleSelected;
                          isMaleSelected = false;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:
                              isFemaleSelected ? Colors.pink : Color(0xFF1d1e33),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 80,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF1d1e33),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                    ),
                    Text(
                      "Height",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w200),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${height.round()}",
                          style: TextStyle(
                            fontSize: 47,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      onChanged: (double x) {
                        setState(() {
                          height = x;
                        });
                      },
                      min: 100,
                      max: 200,
                      activeColor: Color(0xFFeb1555),
                      inactiveColor: Color(0XFF5e5f6e),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF1d1e33)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        Text(
                          "$weight",
                          style: TextStyle(
                            fontSize: 47,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: null,
                              shape: CircleBorder(),
                              backgroundColor: Color(0xFF4c4f5e),
                              child: Icon(
                                Icons.add,
                                size: 35,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (weight < maxWeight) {
                                    weight++;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            FloatingActionButton(
                              heroTag: null,
                              shape: CircleBorder(),
                              backgroundColor: Color(0xFF4c4f5e),
                              child: Icon(
                                Icons.remove,
                                size: 35,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (weight > minWeight) {
                                    weight--;
                                  }
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF1d1e33)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        Text(
                          "$age",
                          style: TextStyle(
                            fontSize: 47,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: null,
                              shape: CircleBorder(),
                              backgroundColor: Color(0xFF4c4f5e),
                              child: Icon(
                                Icons.add,
                                size: 35,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (age < maxAge) {
                                    age++;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            FloatingActionButton(
                              heroTag: null,
                              shape: CircleBorder(),
                              backgroundColor: Color(0xFF4c4f5e),
                              child: Icon(
                                Icons.remove,
                                size: 35,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (age > minAge) {
                                    age--;
                                  }
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                ],
              )),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      bmi = double.parse(
                          (weight / ((height / 100) * (height / 100)))
                              .toStringAsFixed(1));
      
                      isMaleSelected = false;
                      isFemaleSelected = false;
                      height = 177;
                      weight = 70;
                    });
                    Navigator.pushNamed(context, "s2", arguments: bmi);
                  },
                  color: Color(0XFFeb1555),
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
