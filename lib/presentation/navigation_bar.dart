import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_class/bussines_logic/navbar/navigation_notifier.dart';
import 'package:riverpod_class/presentation/inpute_update.dart';
import 'package:riverpod_class/presentation/search_list_view.dart';
import 'package:riverpod_class/presentation/state_provider.dart';
import 'package:riverpod_class/presentation/stream_provider.dart';

class NavigationBars extends ConsumerWidget {
  const NavigationBars({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(navigationNotifierProvider) as int; // Cast to int
    return Scaffold(
      // To route them on the navbar
      body: [
        SearchListView(),
        InputeUpdates(),
        StateProviders(),
        StreamProviders()
      ][index], // Body based on the index
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.browse_gallery),
            icon: Icon(Icons.browse_gallery_outlined),
            label: 'Gallery',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.map),
            icon: Icon(Icons.map_outlined),
            label: 'Map',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
        selectedIndex: index,
        indicatorColor: Colors.blueAccent.shade200,
        onDestinationSelected: (value) {
          ref.read(navigationNotifierProvider.notifier).setSelectedIndex(value);
        },
      ),
    );
  }
}
