import 'package:flutter/material.dart';
import 'package:flutter_upskilling/button.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // bersifat state, nilai awal yang dapat berubah menggunakan setState
  final String title;
  String stateWord = 'Ikbal';
  String number1 = '';
  String number2 = '';
  int result = 0;
  String mark = '';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _showColumn(String hello) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Padding(padding: const EdgeInsets.all(8.0), child: Text('Hello World')),
          Padding(padding: const EdgeInsets.all(8.0), child: Text(hello)),
        ],
      ),
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
      widget.result = num1 + num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(widget.result.toString()),
                    ButtonNumber(textNumber: '1', callback: () => changeNumber('1')),
                    ButtonNumber(textNumber: '2', callback: () => changeNumber('2')),
                    TextButton(onPressed: () {_result();}, child: Text('Result')),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
