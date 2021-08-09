import 'package:flutter/material.dart';
import 'package:flutter_upskilling/button_counter/button_decrement.dart';
import 'package:flutter_upskilling/button_counter/button_increment.dart';

class CounterOperator extends StatelessWidget {
  const CounterOperator({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonIncrement(),
          ButtonDecrement()
        ]
      ),
    );
  }
}