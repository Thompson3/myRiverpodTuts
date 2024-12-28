import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_class/main.dart';

class StateProviders extends ConsumerWidget {
  const StateProviders({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final count = ref.watch(counterProvider);
    ref.listen(counterProvider, ((previous, next) {
      if (count == 5) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Number is up to $count')));
      }
    }));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'State Provider',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              ref.invalidate(counterProvider);
            },
            icon: const Icon(Icons.refresh),
            color: Colors.white,
          )
        ],
      ),
      body: Center(
          child: Text(
        count.toString(),
        style: Theme.of(context).textTheme.titleLarge,
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
