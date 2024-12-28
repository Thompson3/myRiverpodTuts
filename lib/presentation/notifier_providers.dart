import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_class/bussines_logic/notifier_provider.dart';

class NotifierProviders extends ConsumerWidget {
  const NotifierProviders({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter =
        ref.watch(counterNotifierProvider); // Watch the notifier state
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifier Provider',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              ref.invalidate(counterNotifierProvider);
            },
            icon: Icon(Icons.refresh),
            tooltip: 'Refresh',
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            counter.toString(),
            style: Theme.of(context).textTheme.titleLarge,
          ), // Display current counter value
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(counterNotifierProvider.notifier).increment();
                },
                child: Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    ref.read(counterNotifierProvider.notifier).decrement();
                  },
                  child: Icon(Icons.remove, color: Colors.blue)),
            ],
          ),
        ],
      ),
    );
  }
}
