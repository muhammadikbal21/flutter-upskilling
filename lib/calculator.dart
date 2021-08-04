import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('0', style: TextStyle(color: Colors.grey, fontSize: 60)),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                  Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('1'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('4'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('7'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text(','),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('2'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('5'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('8'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('0'),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('3'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('6'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('9'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('='),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('/'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('x'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('-'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('+'),
                  ),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
