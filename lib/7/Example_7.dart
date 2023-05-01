import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Expand_7 extends StatelessWidget {
  const Expand_7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(flex:1,child: Container(color: Colors.amber,)),
          Expanded(flex:2,child: Container(color: Colors.red,)),
          Expanded(flex:3,child: Container(color: Colors.orange,)),
          Expanded(flex:1,child: Container(color: Colors.cyan,)),
          Expanded(flex:5,child: Container(color: Colors.green,)),
        ],
      ),
    );
  }
}

