import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/authController.dart';

class CustomButtom extends StatelessWidget {
  CustomButtom({
    super.key,
  });
  final controller = Get.put(AuthLoginScreen());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthLoginScreen>(builder: (_) {
      return InkWell(
        onTap: () async {
          await controller.postLoginData(
           user:   controller.emailCont.text,  password: controller.passCont.text , );
        },
        child: controller.isLoading.value
            ? const CircularProgressIndicator()
            : Material(
                color: Colors.blue[900],
                elevation: 5,
                borderRadius: BorderRadius.circular(25),
                child: MaterialButton(
                  onPressed: () async {
                  
                    await controller.postLoginData(
                          user:   controller.emailCont.text,  password: controller.passCont.text , );
                  },
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  minWidth: MediaQuery.of(context).size.width,
                  child: const Text(
                    "تسجيل الدخول",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
      );
    });
  }
}
