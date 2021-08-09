import 'package:flutter/material.dart';
import 'package:flutter_upskilling/view_model/counter_view_model.dart';
import 'package:provider/provider.dart';

class ButtonIncrement extends StatelessWidget {
  const ButtonIncrement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
          onPressed: () {
            context.read<CounterViewModel>().increment();
          },
          child: Text('+', style: TextStyle(fontSize: 30.0))),
    );
  }
}
