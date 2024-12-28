import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_class/bussines_logic/listview/player_notifier.dart';

class SearchListView extends ConsumerWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final players = ref.watch(playerNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search listView',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) =>
                  ref.read(playerNotifierProvider.notifier).filterPlayer(value),
              decoration: InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: players.length,
                    itemBuilder: (context, index) => ListTile(
                          title: Text(
                            players[index]['name'] ??
                                'Unknown', // Use correct key and fallback
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(players[index]['country'] ??
                              'Unknown'), // Handle null for country too
                        )))
          ],
        ),
      ),
    );
  }
}
