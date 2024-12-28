import 'package:flutter_riverpod/flutter_riverpod.dart';

// For increment and decrement counter
// This code snippet don't have a direct equivaltion in the main.dart file, beacuse it is a standalone file

class CounterNotifier extends Notifier<int> {
  @override
  int build() {
    return 0; // Initial counter value
  }

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}

final counterNotifierProvider = NotifierProvider<CounterNotifier, int>(
  () => CounterNotifier(),
);
