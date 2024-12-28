import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_class/main.dart';

class Providers extends ConsumerWidget {
  const Providers({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Riverpod Providers',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Text(
        name,
        style: Theme.of(context).textTheme.titleLarge,
      )),
    );
  }
}
