import 'package:flutter/material.dart';

class Lifecycle_statefull extends StatefulWidget {
  const Lifecycle_statefull({Key? key}) : super(key: key);

  @override
  State<Lifecycle_statefull> createState() => _Lifecycle_statefullState();
}

class _Lifecycle_statefullState extends State<Lifecycle_statefull> {
  void abc(bool adding) {
    setState(() {
      if (adding == true) {
        i++;
      } else {
        i--;
      }
    });
  }

  int i = 0;

  @override
  void initState() {
    super.initState();
    print("inttState");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => abc(true),
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Increment Number\n${i}",
              style: const TextStyle(
                fontSize: 30,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () => abc(false),
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                "Minus",
                style: TextStyle(
                  // backgroundColor: Colors.cyan,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant Lifecycle_statefull oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }
}

