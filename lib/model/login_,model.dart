import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class LoginResonseModel {
  final String token;
  final String error;
  LoginResonseModel({
    required this.token,
    required this.error,
  });

  factory LoginResonseModel.fromjson(Map<String, dynamic> json) {
    return LoginResonseModel(
      token: json['token'] as String,
      error: json['error'] as String,
    );
  }
}

class LoginRequistModel {
  String email;
  String password;
  LoginRequistModel({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> tojson() {
    Map<String, dynamic> map = {
      'email': email.trim(),
      'password': password.trim(),
    };
    return map;
  }
}
