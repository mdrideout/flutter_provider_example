import 'package:flutter/foundation.dart';
import 'counter.dart';

class CounterData extends ChangeNotifier {
  Counter counter = Counter(count: 0);

  void incrementCounter() {
    counter.count += 1;
    notifyListeners();
  }
}
