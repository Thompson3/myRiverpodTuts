import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'player_notifier.g.dart';

@riverpod
class PlayerNotifier extends _$PlayerNotifier {
  final List<Map<String, dynamic>> allPlayers = [
    {"name": "Carex Ben", "country": "Nigeria"},
    {"name": "Thompson B", "country": "Austria"},
    {"name": "Divine Oti", "country": "France"},
    {"name": "Paul Law", "country": "Spain"},
    {"name": "Annointing Gabi", "country": "UAE"},
    {"name": "Peace Edet", "country": "Cameron"},
    {"name": "Jane Okoi", "country": "Cameroon"},
    {"name": "James Ofem", "country": "Egypt"},
    {"name": "Ben Uolo", "country": "Turkey"},
    {"name": "Grace Michelin", "country": "England"},
  ];

  @override
  List<Map<String, dynamic>> build() {
    return allPlayers;
  }

  // Filter function to update state with filtered players
  void filterPlayer(String playerName) {
    List<Map<String, dynamic>> results = [];

    if (playerName.isEmpty) {
      results = allPlayers;
    } else {
      results = state
          .where((element) => element['name']
              .toString()
              .toLowerCase()
              .contains(playerName.toLowerCase()))
          .toList();
    }

    // Updating state with the filtered results
    state = results;
  }
}
// I run "dart run build_runner watch" in terminal to create a generated code for the "part 'player_notifier.g.dart';" file