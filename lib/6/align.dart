import 'package:flutter/material.dart';

class align1 extends StatefulWidget {
  const align1({Key? key}) : super(key: key);

  @override
  State<align1> createState() => _align1State();
}

class _align1State extends State<align1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 250,
        width: 250,
        margin: const EdgeInsets.all(10),
        alignment: const Alignment(-0.7,1),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black,width: 2),
          borderRadius: BorderRadius.circular(10),
          // shape: BoxShape.circle,
          gradient: const LinearGradient(
            colors: [Colors.purple,Colors.blue,Colors.green,Colors.deepOrange,Colors.yellow],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(5, 5),
              blurRadius: 10,
              spreadRadius: 2,
            )],
        ),
        child: const Text("Prince",style: TextStyle(fontSize: 25),),
      ),
    );
  }
}

