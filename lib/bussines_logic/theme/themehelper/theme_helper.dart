// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_helper.g.dart';

@riverpod
ThemeHelper themeHelper(ThemeHelperRef ref) {
  return ThemeHelper();
}

class ThemeHelper {
  final _box = GetStorage();
  final _key = 'theme';

  ThemeMode themeMode() {
    final themeValue = _box.read(_key);
    if (themeValue == null) {
      return ThemeMode.system;
    }
    return ThemeMode.values[themeValue];
  }

  void updateThemeMode(ThemeMode themeMode) {
    _box.write(_key, themeMode.index);
  }
}
