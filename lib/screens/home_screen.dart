import 'package:flutter/material.dart';
import 'package:provider_example/widgets/counter_widget.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/counterData.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Test App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: CounterWidget(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          Provider.of<CounterData>(context).incrementCounter();
        },
      ),
    );
  }
}
