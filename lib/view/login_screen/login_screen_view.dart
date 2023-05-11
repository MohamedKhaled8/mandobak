import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandobak/controller/authController.dart';

import '../../widgets/custom_formfield.dart';

class LoginScreenView extends StatelessWidget {
  LoginScreenView({super.key});
  final ScreenUtil screenUtil = ScreenUtil();
  final controller = Get.put(AuthLoginScreen());
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: GetBuilder<AuthLoginScreen>(
                builder: (controller) {
                  return CustomFormField(
                      formkey: _formkey, screenUtil: screenUtil);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
