import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  double fontSize = 48;

  void incrementFontSize() {
    setState(() {
      if (fontSize >= 300) {
      } else {
        fontSize += 12;
      }
    });
  }

  void decrementFontSize() {
    setState(() {
      if (fontSize <= 12) {
      } else {
        fontSize -= 12;
      }
    });
  }

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color textColor = Colors.black;
    if (counter > 0) {
      textColor = Colors.green;
    } else if (counter < 0) {
      textColor = Colors.red;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.text_increase),
              onPressed: incrementFontSize,
            ),
            IconButton(
              icon: const Icon(Icons.text_decrease),
              onPressed: decrementFontSize,
            ),
          ],
        ),
        const Text(
          'SAYACIM',
          style: TextStyle(fontSize: 14),
        ),
        Text(
          '$counter',
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
          ),
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: incrementCounter,
          child: const Icon(
            Icons.add,
            color: Colors.green,
          ),
        ),
        ElevatedButton(
          onPressed: decrementCounter,
          child: const Icon(
            Icons.remove,
            color: Colors.red,
          ),
        ),
        FloatingActionButton(
          onPressed: resetCounter,
          child: const Icon(
            Icons.refresh,
            color: Colors.amber,
          ),
        ),
      ],
    );
  }
}
