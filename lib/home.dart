// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_class/bussines_logic/theme/themenotifier/theme_notifier.dart';
import 'package:riverpod_class/presentation/family_modifier.dart';
import 'package:riverpod_class/presentation/inpute_update.dart';
import 'package:riverpod_class/presentation/navigation_bar.dart';
import 'package:riverpod_class/presentation/notifier_providers.dart';
import 'package:riverpod_class/presentation/providers.dart';
import 'package:riverpod_class/presentation/search_list_view.dart';
import 'package:riverpod_class/presentation/state_notifier_provider.dart';
import 'presentation/future_provider.dart';
import 'presentation/state_provider.dart';
import 'presentation/stream_provider.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // For Dark theme and light Theme mode
    final themeMode = ref.watch(themeNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Practical App',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        // the switch for light theme and dark theme
        actions: [
          IconButton(
              onPressed: () {
                ref.read(themeNotifierProvider.notifier).setTheme();
              },
              icon: themeMode == ThemeMode.dark
                  ? Icon(
                      CupertinoIcons.brightness,
                      color: Colors.white,
                      size: 30,
                    )
                  : Icon(
                      CupertinoIcons.moon_stars,
                      color: Colors.black,
                      size: 30,
                    ))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Providers()));
                        },
                        child: const Text(
                          'Providers',
                          style: TextStyle(color: Colors.white),
                        ))),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StateProviders()));
                        },
                        child: const Text(
                          'State Provider',
                          style: TextStyle(color: Colors.white),
                        ))),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      StateNotifierProviders()));
                        },
                        child: const Text(
                          'State Notifier Provider',
                          style: TextStyle(color: Colors.white),
                        ))),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FutureProviders()));
                        },
                        child: const Text(
                          'Future Provider',
                          style: TextStyle(color: Colors.white),
                        ))),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StreamProviders()));
                        },
                        child: const Text(
                          'Stream Provider',
                          style: TextStyle(color: Colors.white),
                        ))),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FamilyModifier()));
                        },
                        child: const Text(
                          'Family Modifier',
                          style: TextStyle(color: Colors.white),
                        ))),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InputeUpdates()));
                        },
                        child: const Text(
                          'Input Update',
                          style: TextStyle(color: Colors.white),
                        ))),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NotifierProviders()));
                        },
                        child: const Text(
                          'Notifier Provider',
                          style: TextStyle(color: Colors.white),
                        ))),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SearchListView()));
                        },
                        child: const Text(
                          'Search ListView',
                          style: TextStyle(color: Colors.white),
                        ))),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavigationBars()));
                        },
                        child: const Text(
                          'Bottom NavBar',
                          style: TextStyle(color: Colors.white),
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
