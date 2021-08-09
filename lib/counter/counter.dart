import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({ Key? key }) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Provider Page")
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(value.toString(), style: TextStyle(fontSize: 30.0)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    value++;
                  });
                }, 
                child: Text('+', style: TextStyle(fontSize: 30.0))
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    if (value > 0) {
                      value--;
                    }
                  });
                }, 
                child: Text('-', style: TextStyle(fontSize: 30.0))
              ),
            ],
          )
        ],
      )
    );
  }
}