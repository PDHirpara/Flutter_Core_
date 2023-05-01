import 'package:flutter/material.dart';

class AgeCalculator extends StatefulWidget {
  const AgeCalculator({Key? key}) : super(key: key);

  @override
  State<AgeCalculator> createState() => _AgeCalculatorState();
}

class _AgeCalculatorState extends State<AgeCalculator> {
  // String str = '';
  String years = "";
  String months = "";
  String days = "";
  DateTime? startDate;
  DateTime? finalDate;
  String sd = "";
  String fd = "";

  // calculateAge(StartDate) {
  //   // DateTime currentDate = DateTime.now();
  //   setState(() {
  //     num age = FinalDate!.year - StartDate!.year;
  //
  //     // return age;
  //   });
  // }

  calculation() {
    setState(() {
      // Duration? aDate=startDate!.difference(finalDate!);
      years = (finalDate!.year - startDate!.year).toString();
      months = (finalDate!.month - startDate!.month).toString();
      days = (finalDate!.day - startDate!.day).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(
          child: Text(
            'Age Calculator',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your Age is:',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "$years year $months month $days day",
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () async {
                    startDate = await showDatePicker(
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100),
                        context: context);
                    setState(() {
                      sd= startDate.toString();
                    });
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                      Colors.black26,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(
                          color: Colors.black26,
                        ),
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 8.0,
                      right: 8.0,
                    ),
                    child: Text(
                      'Start Date',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  // startDate!.toString().split(' ').first,
                  sd.split(' ').first,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  // onPressed: () {},
                  onPressed: () async {
                    finalDate = await showDatePicker(
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100),
                        context: context);
                    setState(() {
                      fd = finalDate.toString();
                    });
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                      Colors.black26,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(
                          color: Colors.black26,
                        ),
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 8.0,
                      right: 8.0,
                    ),
                    child: Text(
                      ' End Date ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  // finalDate!.toString().split(' ').first,
                  fd.split(' ').first,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    calculation();
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                      Colors.black26,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(
                          color: Colors.black26,
                        ),
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Text(
                      'Calculate',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

