// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

import 'package:flutter/material.dart';

// I generated user notifier to get the remaining class by pressing the 'generate data class'
// To enable the widget update to it current value when a user input any value in the input method called(form)

@immutable
class UserN {
  final String name;
  final String Address;
  const UserN(
    this.name,
    this.Address,
  );

  UserN copyWith({
    String? name,
    String? Address,
    required String address,
  }) {
    return UserN(
      name ?? this.name,
      Address ?? this.Address,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'Address': Address,
    };
  }

  factory UserN.fromMap(Map<String, dynamic> map) {
    return UserN(
      map['name'] as String,
      map['Address'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserN.fromJson(String source) =>
      UserN.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserN(name: $name, Address: $Address)';

  @override
  bool operator ==(covariant UserN other) {
    if (identical(this, other)) return true;

    return other.name == name && other.Address == Address;
  }

  @override
  int get hashCode => name.hashCode ^ Address.hashCode;
}
