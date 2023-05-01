import 'package:flutter/material.dart';

class test1 extends StatelessWidget {
  test1({Key? key}) : super(key: key);

  TextStyle textStyle =
      const TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  Color color = Colors.white;
  Widget myWidget = Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Center(
              child: Text(
            '🛍️List of Fruits',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          )),
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                  letterSpacing: 6, fontSize: 40, fontWeight: FontWeight.bold),
              children: <InlineSpan>[
                TextSpan(
                  text: "🍎 Apple\n",
                  style: textStyle.copyWith(color: Colors.orange, fontSize: 10),
                ),
                const TextSpan(
                  text: "🍇 Greps\n",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "🍒 Cherry\n",
                  style: TextStyle(
                    color: Colors.purpleAccent,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "🍓 Strawberry\n",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "🥭 Mango\n",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "🍍 Pineapple\n",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "🍋 Lemon\n",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "🍉 Watermelon\n",
                  style: TextStyle(
                    color: Colors.lightGreenAccent,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "🥥 Coconut\n",
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
