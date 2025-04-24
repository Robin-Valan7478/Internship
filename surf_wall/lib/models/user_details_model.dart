// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

part 'user_details_model.g.dart';

@HiveType(typeId: 1)
class UserDetails extends HiveObject {

  @HiveField(0)
  final String email;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final bool isLoggedIn;

   UserDetails({
    required this.email,
    required this.name,
    required this.isLoggedIn,
  });

  UserDetails copyWith({
    String? email,
    String? name,
    bool? isLoggedIn,
  }) {
    return UserDetails(
      email: email ?? this.email,
      name: name ?? this.name,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'name': name,
      'isLoggedIn': isLoggedIn,
    };
  }

  factory UserDetails.fromMap(Map<String, dynamic> map) {
    return UserDetails(
      email: map['email'] as String,
      name: map['name'] as String,
      isLoggedIn: map['isLoggedIn'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserDetails.fromJson(String source) => UserDetails.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserDetails(email: $email, name: $name, isLoggedIn: $isLoggedIn)';

  @override
  bool operator ==(covariant UserDetails other) {
    if (identical(this, other)) return true;
  
    return 
      other.email == email &&
      other.name == name &&
      other.isLoggedIn == isLoggedIn;
  }

  @override
  int get hashCode => email.hashCode ^ name.hashCode ^ isLoggedIn.hashCode;
}
