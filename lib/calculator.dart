import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({Key? key, required this.title}) : super(key: key);

  final String title;
  String number1 = '';
  String number2 = '';
  String numbDisplay = '0';
  int result = 0;
  String mark = '';

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final ButtonStyle style =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  Widget _buttonCalc(String value) {
    return ElevatedButton(
      style: style,
      onPressed: () {},
      child: Text(value),
    );
  }

  changeNumber(String number) {
    setState(() {
      if (widget.number1 == '') {
        widget.number1 = number;
      } else {
        widget.number2 = number;
      }
    });
  }

  _result() {
    setState(() {
      int num1 = int.parse(widget.number1);
      int num2 = int.parse(widget.number2);

      switch (widget.mark) {
        case '+':
          widget.result = num1 + num2;
          break;
        case '-':
          widget.result = num1 - num2;
          break;
        case 'x':
          widget.result = num1 * num2;
          break;
        case '/':
          widget.result = (num1.toDouble() / num2.toDouble()).toInt();
          break;
        default:
        break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
                Text(widget.result.toString(),
                    style: TextStyle(color: Colors.grey, fontSize: 60)),
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
                    onPressed: () {
                      changeNumber('1');
                    },
                    child: const Text('1'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      changeNumber('4');
                    },
                    child: const Text('4'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      changeNumber('7');
                    },
                    child: const Text('7'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      setState(() {
                        widget.number1 = '';
                        widget.number2 = '';
                        widget.numbDisplay = '0';
                        widget.result = 0;
                        widget.mark = '';
                      });
                    },
                    child: const Text('C'),
                  ),
                ]),
                // child: Column(
                //     mainAxisSize: MainAxisSize.min,
                //     children: <Widget>[
                //       _buttonCalc('1'),
                //       _buttonCalc('4'),
                //       _buttonCalc('7'),
                //       _buttonCalc(',')
                //     ]),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      changeNumber('2');
                    },
                    child: const Text('2'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      changeNumber('5');
                    },
                    child: const Text('5'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      changeNumber('8');
                    },
                    child: const Text('8'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      changeNumber('0');
                    },
                    child: const Text('0'),
                  ),
                ]),
                // child:
                //     Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                //   _buttonCalc('2'),
                //   _buttonCalc('5'),
                //   _buttonCalc('8'),
                //   _buttonCalc('0'),
                // ]),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      changeNumber('3');
                    },
                    child: const Text('3'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      changeNumber('6');
                    },
                    child: const Text('6'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      changeNumber('9');
                    },
                    child: const Text('9'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: _result,
                    child: const Text('='),
                  ),
                ]),

                // child:
                //     Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                //   _buttonCalc('3'),
                //   _buttonCalc('6'),
                //   _buttonCalc('9'),
                //   _buttonCalc('='),
                // ]),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      setState(() {
                        widget.mark = '/';
                      });
                    },
                    child: const Text('/'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      setState(() {
                        widget.mark = 'x';
                      });
                    },
                    child: const Text('x'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      setState(() {
                        widget.mark = '-';
                      });
                    },
                    child: const Text('-'),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      setState(() {
                        widget.mark = "+";
                      });
                    },
                    child: const Text('+'),
                  ),
                ]),
                // child:
                //     Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                //   _buttonCalc('/'),
                //   _buttonCalc('x'),
                //   _buttonCalc('-'),
                //   _buttonCalc('+'),
                // ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
