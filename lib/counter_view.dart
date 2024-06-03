import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:state_management_starting/counter.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              counter.reset();
            },
            icon: Icon(Icons.refresh),
          ),
        ],
        title: Text("State management"),
      ),
      body: Observer(
        builder: (context) => Center(
          child: Text(
            counter.value.toString(),
            style: TextStyle(fontSize: 150.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => counter.increment(),
      ),
    );
  }
}
