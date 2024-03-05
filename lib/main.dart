import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

void main() {
  runApp(const Content());
}

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.purpleAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Wrap(
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 16,
                  children: [
                    Image.asset(
                      "assets/images/quiz-logo.png",
                      width: 300,
                    ),
                    const Text(
                      "Quiz App",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    ElevatedButton(
                      onPressed: () => {},
                      child: const Text("Start Quiz"),
                    )
                  ]),
            )
          ],
        ),
      ),
    ));
  }
}
