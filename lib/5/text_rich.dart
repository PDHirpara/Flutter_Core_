import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class text_rich extends StatefulWidget {
  const text_rich({Key? key}) : super(key: key);

  @override
  State<text_rich> createState() => _text_richState();
}

class _text_richState extends State<text_rich> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('This is my App'),
        centerTitle: false,
      ),
      body: getRichText(),
    );
  }
  getTextRich() {
    return Text.rich(
        TextSpan(
            text: "this is my text",
            style: const TextStyle(
                fontSize: 40,
                color: Colors.blue,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold
            ),
            recognizer: TapGestureRecognizer()
              ..onTap=(){
                print("this text is clicked");
              },
            children: <InlineSpan>[
              TextSpan(
                  text:" click here",
                  recognizer: TapGestureRecognizer()
                    ..onTap=(){
                      print("click");
                    }
              )
            ]
        )
    );
  }

  getRichText(){
    return RichText(
        text: TextSpan(
            text: "not signed up yet? ",
            style: const TextStyle(
                fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold
            ),
            children: <InlineSpan>[
              TextSpan(
                  text: "Sign up\n",
                  style: const TextStyle(
                      color: Colors.blue,decoration: TextDecoration.lineThrough
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap=(){
                      print("click1");
                    }
              ),
              TextSpan(
                  text: "go back to login if already registered\n",
                  recognizer: TapGestureRecognizer()
                    ..onTap=(){
                      print("click");
                    }
              ),
              TextSpan(
                  text: "go back to login if already registered\n",
                  recognizer: TapGestureRecognizer()
                    ..onTap=(){
                      print("click");
                    }
              ),
              WidgetSpan(
                  child: TextButton(onPressed: () {  },
                    child: const Text("Simple button"),
                  ))
            ]
        )
    );
  }
  getClickableText(){
    return GestureDetector(
      onTap: (){
        print("text is clicked");
      },
      child: Text("this is clickable text"),
    );
  }
}

