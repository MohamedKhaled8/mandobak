import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../view/home_view/home_screen_view.dart';

class AuthLoginScreen extends GetxController {
  final TextEditingController emailCont = TextEditingController();
  final TextEditingController passCont = TextEditingController();

  RxBool isLoading = false.obs;
  var isPasswordHidden = true.obs;

  Future<int> postLoginData({
    required String user,
    required String password,
  }) async {
    var url = Uri.parse("https://admin.mandobakph.com/v1/mobile/login");
    var response = await http.post(url,
        body: jsonEncode({"username": user, "password": password}),
        headers: {
          "Language": "En",
          "Content-Type": "application/json-patch+json"
        });
    var responseBody = json.decode(response.body);

    try {
      if (response.statusCode == 200) {
        SharedPreferences preferences = await SharedPreferences.getInstance();
        preferences.setString('token', responseBody['data']['token']);
        preferences.setString('user', user);
        preferences.setString('password', password);

        Get.off(() => const HomeScreenView());
      }
      if (response.statusCode == 401) {
        Get.snackbar('obs', 'incorrect email or password');
      }
      if (response.statusCode == 400) {
        Get.snackbar('obs', 'bad request');
      }
    } catch (e) {
      Get.snackbar('wait', e.toString());
    }
    return response.statusCode;
  }

  @override
  void onClose() {
    emailCont.dispose();
    passCont.dispose();
    super.onClose();
  }
}
