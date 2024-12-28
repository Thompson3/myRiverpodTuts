// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_class/main.dart';

class FutureProviders extends ConsumerWidget {
  const FutureProviders({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final userData = ref.watch(userProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Future Provider',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        centerTitle: true,
      ),
      body: userData.when(
          data: (data) {
            return ListView.builder(
              itemBuilder: ((context, index) {
                return ListTile(
                    title: Text(
                      "${data[index].firstName} ${data[index].lastName}",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    subtitle: Text(
                      data[index].email,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    leading: CircleAvatar(
                      child: Image.network(data[index].avatar),
                    ));
              }),
              itemCount: data.length,
            );
          },
          error: ((error, StackTrace) => Text(error.toString())),
          loading: (() {
            return const Center(
              child: CircularProgressIndicator(),
            );
          })),
    );
  }
}
