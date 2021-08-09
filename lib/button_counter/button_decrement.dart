import 'package:flutter/material.dart';

class ButtonDecrement extends StatelessWidget {
  final Function decrement;
  const ButtonDecrement({Key? key, required this.decrement}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
          onPressed: () {
            decrement();
          },
          child: Text('-', style: TextStyle(fontSize: 30.0))),
    );
  }
}
