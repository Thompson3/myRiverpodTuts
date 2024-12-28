import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_class/bussines_logic/theme/themehelper/theme_helper.dart';

part 'theme_notifier.g.dart';

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  @override
  ThemeMode build() {
    return ref.watch(themeHelperProvider).themeMode();
  }

  ThemeMode getTheme() {
    return state;
  }

  void setTheme() {
    if (state == ThemeMode.dark) {
      state = ThemeMode.light;
    } else {
      state = ThemeMode.dark;
    }
    ref.read(themeHelperProvider).updateThemeMode(state);
  }
}
