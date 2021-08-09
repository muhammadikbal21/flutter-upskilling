import 'package:flutter/material.dart';
import 'package:flutter_upskilling/button_counter/button_decrement.dart';
import 'package:flutter_upskilling/button_counter/button_increment.dart';
import 'package:flutter_upskilling/view_model/counter_view_model.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({ Key? key }) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Provider Page")
      ),
      body: ChangeNotifierProvider(
        create: (context) => CounterViewModel(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Consumer<CounterViewModel>(
                builder: (context, value, child) {
                  return Text('${value.val}', style: TextStyle(fontSize: 30.0));
                },
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonIncrement(),
                ButtonDecrement()
              ],
            )
          ],
        ),
      )
      
      
    );
  }
}