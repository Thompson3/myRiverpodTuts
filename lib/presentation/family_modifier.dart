import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_class/bussines_logic/user.dart';
import 'package:riverpod_class/main.dart';

class FamilyModifier extends ConsumerWidget {
  const FamilyModifier({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final modifier =
        ref.watch(familyModifier(const User('Carex', '8Miles, Calabar')));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Family Modifier with Multiple Values',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: Center(
          child: Text(
        modifier,
        style: Theme.of(context).textTheme.labelLarge,
      )),
    );
  }
}
