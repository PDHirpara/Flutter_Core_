import 'package:flutter/material.dart';

class Primenumber extends StatefulWidget {
  const Primenumber.Primenumber({Key? key}) : super(key: key);

  @override
  State<Primenumber> createState() => _PrimenumberState();
}

class _PrimenumberState extends State<Primenumber> {
  int M = 0, N = 0;
  var k = 0, c = 0;
  String val = '';

  printPrimeNumbers() {
    val = '';
    a:
    for (k = M; k <= N; ++k) {
      for (var i = 2; i <= k / i; ++i) {
        if (k % i == 0) {
          continue a;
        }
      }
      val = '$val$k, ';//(val + k.toString() + ', ')
      c = k;
    }
    setState(() {});
    // return c;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                textAlign: TextAlign.center,
                maxLength: 3,
                obscureText: true,
                autofocus: true,
                onChanged: (value) => N = int.parse(value),
                keyboardType: TextInputType.number,
                inputFormatters: const [],
                decoration: InputDecoration(
                  helperText: 'Input number you want prime number.',
                  hintText: "Enter some string",
                  label: const Text("PD"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () => printPrimeNumbers(),
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                "Press",
                style: TextStyle(
                    // backgroundColor: Colors.cyan,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                val,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
