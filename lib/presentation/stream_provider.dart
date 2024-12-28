import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_class/main.dart';

class StreamProviders extends ConsumerWidget {
  const StreamProviders({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final streamData = ref.watch(streamProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stream Provider',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        centerTitle: true,
      ),
      body: streamData.when(
          data: ((data) => Center(
                  child: Text(
                data.toString(),
                style: Theme.of(context).textTheme.titleLarge,
              ))),
          error: ((error, stackTrace) => Text(error.toString())),
          loading: () => const Center(child: CircularProgressIndicator())),
    );
  }
}
