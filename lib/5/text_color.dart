import 'package:flutter/material.dart';

class text_color extends StatefulWidget {
  const text_color({Key? key}) : super(key: key);

  @override
  State<text_color> createState() => _text_colorState();
}

class _text_colorState extends State<text_color> {
  String longString="hello this is string and this is very very much big string";
  String shortString="this is short string";
  bool myString=true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('HellO'))),
        body: Column(

          children: [
            SizedBox(
              height: 100,
              child: Center(
                child: Text(
                  myString ? longString : shortString,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.lineThrough
                  ),

                ),
              ),
            ),
            TextButton(onPressed: (){
              setState(() {
                myString = !myString;
              });
            },
                style: TextButton.styleFrom(backgroundColor: Colors.grey),
                child: const Text("change my string",style: TextStyle(color: Colors.black),)
            )
          ],
        )
    );

  }
}

