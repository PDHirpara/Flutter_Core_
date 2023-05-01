import 'package:flutter/material.dart';

class test2 extends StatelessWidget {
  const test2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: const Center(
              child: Text(
            "Red & White",
            style: TextStyle(fontSize: 25),
          )),
        ),
        body: Center(
            child: RichText(
          text: const TextSpan(
            style: TextStyle(letterSpacing: 6),
            children: <InlineSpan>[
              TextSpan(
                text: "           G",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: "R",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "APHICS",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: "\n     FLUTT",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: "E",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "R",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: "\n         AN",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: "D",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "ROID",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: "\n  DESIGN",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: " & ",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "DEVELOP",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: "\n          W",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "EB",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: "\n        FAS",
                style: TextStyle(
                  color: Colors.yellowAccent,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: "H",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "ION",
                style: TextStyle(
                  color: Colors.yellowAccent,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: "\n   ANIMAT",
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: "I",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "ON",
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: "\n            I",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: "T",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "A-CS+",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: "\n        GAM",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: "E",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )));
  }
}
