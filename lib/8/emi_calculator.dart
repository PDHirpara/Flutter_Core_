import 'dart:math';

import 'package:flutter/material.dart';

class EmiCalculator extends StatefulWidget {
  const EmiCalculator({Key? key}) : super(key: key);

  @override
  State<EmiCalculator> createState() => _EmiCalculatorState();
}

class _EmiCalculatorState extends State<EmiCalculator> {
  double a = 0;
  double iRate = 3;
  double iRate1 = 0;

  emi(double p, double r, double t) {
    double emi = 0;
    r = r / (12 * 100); // one month interest
    t = t * 12; // one month period
    emi = (p * r * pow(1 + r, t)) / (pow(1 + r, t) - 1);
    print(emi);

    // return (emi);
  }

  // double iRate2 = 3;
  // double iRate3 = 6;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (value) => a = double.parse(value),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                keyboardType: TextInputType.number,
                inputFormatters: const [],
                decoration: const InputDecoration(
                  hintText: "Enter Loan Amount",
                  label: Text(
                    "Loan Amount",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 16, bottom: 35),
                  child: Text(
                    "Interest Rat",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SliderTheme(
              data: SliderThemeData(
                thumbColor: Colors.deepPurple,
                activeTrackColor: Colors.purple,
                inactiveTrackColor: Colors.grey.shade300,
                showValueIndicator: ShowValueIndicator.always,
                valueIndicatorColor: Colors.black,
                overlayColor: Colors.transparent,
                // valueIndicatorTextStyle: TextStyle,
                trackHeight: 8,
              ),
              child: Slider(
                divisions: 15,
                value: iRate.toDouble(),
                onChanged: (value) {
                  setState(() {
                    iRate = value.toDouble();
                  });
                },
                // label: iRate.round().toString(),
                label: '${iRate.toString().split('.')[0]}%',
                // onChangeEnd: (value) {
                //   iRate;
                // },
                min: 3,
                max: 18,
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 16, bottom: 35),
                  child: Text(
                    "Tenure",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SliderTheme(
              data: SliderThemeData(
                thumbColor: Colors.deepPurple,
                activeTrackColor: Colors.purple,
                inactiveTrackColor: Colors.grey.shade300,
                showValueIndicator: ShowValueIndicator.always,
                valueIndicatorColor: Colors.black,
                // valueIndicatorTextStyle: TextStyle,
                trackHeight: 8,
              ),
              child: Slider(
                divisions: 4,
                value: iRate1.toDouble(),
                onChanged: (value) {
                  setState(() {
                    iRate1 = value.toDouble();
                  });
                },
                label: iRate1 == 0
                    ? '${(iRate1 + 3).toString().split('.')[0]}month'
                    : iRate1 == 1
                        ? '${(iRate1 + 5).toString().split('.')[0]}month'
                        : '${(iRate1 - 1).toString().split('.')[0]}year',
                min: 0,
                max: 4,
              ),
            ),
            Container(
              height: 200,
              // color: Colors.blue,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(19, 208, 202, 1),
                      Color.fromRGBO(128, 87, 215, 1),
                    ],
                  )),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 50, bottom: 35),
                    child: Text(
                      "Your Monthly EMI is:\n",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () => emi(a, iRate, iRate1),
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text(
                "Calculate",
                style: TextStyle(
                    // backgroundColor: Colors.cyan,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
