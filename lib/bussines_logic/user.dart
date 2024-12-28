import 'package:equatable/equatable.dart';

// For family modifier with multiple values

class User extends Equatable {
  final String name;
  final String aaddress;
  const User(this.name, this.aaddress);

  @override
  List<Object?> get props => [name, aaddress];
}
