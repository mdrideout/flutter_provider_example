import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/counterData.dart';

class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterData>(
      builder: (context, counterData, child) {
        String counterCount = counterData.counter.count.toString();

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This counter is incremented using Provider for state management. \nThe counter is displayed as a consumer to the change notifier.',
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$counterCount',
              style: TextStyle(
                fontSize: 32.0,
              ),
            ),
          ],
        );
      },
    );
  }
}
