import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_class/main.dart';

class StateNotifierProviders extends ConsumerWidget {
  const StateNotifierProviders({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final counter = ref.watch(counterNotifier);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'State Notifier Provider',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                ref.invalidate(counterNotifier);
              },
              icon: const Icon(
                Icons.refresh,
                color: Colors.white,
              ))
        ],
      ),
      body: Center(
          child: Text(
        '$counter',
        style: Theme.of(context).textTheme.titleLarge,
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          ref.read(counterNotifier.notifier).increment();
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
