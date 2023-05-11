import 'dart:math';

import 'package:flutter/material.dart';

import 'package:mandobak/view/home_view/home_screen_view.dart';
import 'package:mandobak/view/login_screen/login_screen_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthContainer extends StatefulWidget {
  const AuthContainer({super.key});

  @override
  State<AuthContainer> createState() => _AuthContainerState();
}

class _AuthContainerState extends State<AuthContainer> {
  String? token;
  bool initial = true;
 
  @override
  Widget build(BuildContext context) {
    if (initial) {
      SharedPreferences.getInstance().then((shardPrefValue) {
        setState(() async {
          initial = false;

          token = shardPrefValue.getString("token")!;
        });
      });
      return const CircularProgressIndicator();
    } else {
      if (token == null) {
        return LoginScreenView();
      } else {
        return const HomeScreenView();
      }
    }
  }
}
