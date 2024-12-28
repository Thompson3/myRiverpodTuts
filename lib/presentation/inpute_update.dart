import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_class/main.dart';

///To be updating current user value
class InputeUpdates extends ConsumerWidget {
  const InputeUpdates({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final putIt = ref.watch(usernProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Update Current Value',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          IconButton(
              onPressed: () {
                ref.invalidate(usernProvider);
              },
              icon: const Icon(
                Icons.refresh,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              onSubmitted: (value) =>
                  ref.read(usernProvider.notifier).updateName(value),
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              onSubmitted: (value) =>
                  ref.read(usernProvider.notifier).updateAddress(value),
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${putIt.name}, ${putIt.Address}',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
