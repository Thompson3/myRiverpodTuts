// ignore_for_file: unused_local_variable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:riverpod_class/bussines_logic/counter_demo.dart';
import 'package:riverpod_class/bussines_logic/theme/themenotifier/theme_notifier.dart';
import 'package:riverpod_class/data/api_services.dart';
import 'package:riverpod_class/bussines_logic/user.dart';
import 'package:riverpod_class/bussines_logic/user_model.dart';
import 'package:riverpod_class/home.dart';

import 'bussines_logic/inputUpdate/user_n.dart';
import 'bussines_logic/inputUpdate/user_notifier.dart';
import 'bussines_logic/theme/theme.dart';

// All complete riverpod logics
final nameProvider = Provider<String>(
  (ref) {
    return 'Hello Thompson';
  },
);
final counterProvider = StateProvider<int>(
  (ref) => 0,
);
final counterNotifier =
    StateNotifierProvider<CounterDemo, int>((ref) => CounterDemo());
//for Api fetching
final apiProvider = Provider<ApiService>((ref) => ApiService());
final userProvider = FutureProvider<List<UserModel>>((ref) {
  return ref.read(apiProvider).getUser();
});
final streamProvider = StreamProvider.autoDispose<int>((ref) {
  return Stream.periodic(
    const Duration(seconds: 2),
    (computationCount) => computationCount,
  );
});
final familyModifier = Provider.family<String, User>((ref, user) {
  return 'Name: ${user.name} and Address ${user.aaddress}';
});
// For light and dark theme mode
// For light and dark theme mode
final themeProvider = StateProvider<bool>((ref) => true);
// for input update
final usernProvider = StateNotifierProvider<UserNotifier, UserN>(
    (ref) => UserNotifier(const UserN('Your name', 'Your address')));

void main() async {
  // included this for the get storage package to bring theme
  await GetStorage.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // For light and dark theme mode
    final themeMode = ref.watch(themeNotifierProvider);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme.copyWith(useMaterial3: true),
      darkTheme: darkTheme.copyWith(useMaterial3: true),
      home: const Home(),
      themeMode: themeMode,
    );
  }
}
