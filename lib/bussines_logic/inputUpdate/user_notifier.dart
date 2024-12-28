import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_class/bussines_logic/inputUpdate/user_n.dart';

//this code snippet helps the "UserN" to update it current value from UI when user inpute new value.

class UserNotifier extends StateNotifier<UserN> {
  UserNotifier(super.state);
  void updateName(String newValue) {
    state = state.copyWith(name: newValue, address: '');
  }

  void updateAddress(String newValue) {
    state = state.copyWith(Address: newValue, address: '');
  }
}
