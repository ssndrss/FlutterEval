import 'package:flutter/material.dart';
import 'images.dart';

class Body extends StatefulWidget {
  const Body({super.key, required this.state});

  final bool state;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  String _number = "0";

  _incrementCounter(String n) {
    setState(() {
      _number = n;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(180, 180, 255, 1),
        centerTitle: true,
        title: const Text("Contrôle Flutter"),
      ),
      body: Center(
        child: widget.state == false ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_number),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(180, 180, 255, 0.5),
                      padding: const EdgeInsets.all(20)
                    ),
                    onPressed: () => _incrementCounter("1"),
                    child: const Text("1")),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(180, 180, 255, 0.5),
                      padding: const EdgeInsets.all(20)
                    ),
                    onPressed: () => _incrementCounter("4"),
                    child: const Text("4")),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(180, 180, 255, 0.5),
                      padding: const EdgeInsets.all(20)
                    ),
                    onPressed: () => _incrementCounter("7"),
                    child: const Text("7"))
              ]),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(180, 180, 255, 0.5),
                      padding: const EdgeInsets.all(20)
                    ),
                    onPressed: () => _incrementCounter("2"),
                    child: const Text("2")),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(180, 180, 255, 0.5),
                      padding: const EdgeInsets.all(20)
                    ),
                    onPressed: () => _incrementCounter("5"),
                    child: const Text("5")),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(180, 180, 255, 0.5),
                      padding: const EdgeInsets.all(20)
                    ),
                    onPressed: () => _incrementCounter("8"),
                    child: const Text("8"))
              ]),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(180, 180, 255, 0.5),
                      padding: const EdgeInsets.all(20)
                    ),
                    onPressed: () => _incrementCounter("3"),
                    child: const Text("3")),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(180, 180, 255, 0.5),
                      padding: const EdgeInsets.all(20)
                    ),
                    onPressed: () => _incrementCounter("6"),
                    child: const Text("6")),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(180, 180, 255, 0.5),
                      padding: const EdgeInsets.all(20)
                    ),
                    onPressed: () => _incrementCounter("9"),
                    child: const Text("9"))
                  ],
                ),
              ],
            ),
            TextButton(
              style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(180, 180, 255, 0.5),
                      padding: const EdgeInsets.all(20)
                    ),
              onPressed: () => _incrementCounter("0"),
              child: const Text("0")),
          ],
        ) : ImageComposant(title: "Voici l'image correspondante", index: _number),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}