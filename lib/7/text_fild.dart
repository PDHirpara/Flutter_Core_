import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFild_7 extends StatefulWidget {
  TextFild_7({Key? key}) : super(key: key);

  @override
  State<TextFild_7> createState() => _TextFild_7State();
}

class _TextFild_7State extends State<TextFild_7> {
  String abc='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              onChanged: (value) =>abc=value,

              decoration: InputDecoration(
                hintText: "Enter some string",
                label: Text("PD"),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Container(

                  child: TextButton(onPressed: () { setState(() {});},

                    child: Text("Press"),
                    style: TextButton.styleFrom(backgroundColor: Colors.black),

                  ),
                ),
                Container(
                  child: Text(
                      '${abc}'
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

