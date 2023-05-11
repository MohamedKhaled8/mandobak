import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandobak/controller/authController.dart';
import 'package:mandobak/controller/myController.dart';
import 'package:mandobak/view/home_view/contact_us.dart';
import 'package:url_launcher/url_launcher.dart';

import '../view/buttoms/custombuttom.dart';

class CustomFormField extends StatelessWidget {
  CustomFormField({
    super.key,
    required GlobalKey<FormState> formkey,
    required this.screenUtil,
  }) : _formkey = formkey;

  final GlobalKey<FormState> _formkey;
  final ScreenUtil screenUtil;
  Future<void> _launcherUrl(String? url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not  launcger url";
    }
  }

  final controller = Get.put(AuthLoginScreen());
  final controller2 = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenUtil.setHeight(200),
              child: Image.asset(
                "assets/images/mandobak.png",
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              child: Text(
                " مندوبك",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: screenUtil.setHeight(45),
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'املاء المطوب';
                }
                return null;
              },
              autofocus: false,
              controller: controller.emailCont,
              textInputAction: TextInputAction.next,
              onSaved: (newValue) {
                controller.emailCont.text = newValue!;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.mail),
                  contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            SizedBox(
              height: screenUtil.setHeight(25),
            ),
            Obx(() {
              return TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'املاء المطوب';
                  }
                  return null;
                },
                autofocus: false,
                controller: controller.passCont,
                textInputAction: TextInputAction.next,
                onSaved: (newValue) {
                  controller.emailCont.text = newValue!;
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: controller.isPasswordHidden.value,
                decoration: InputDecoration(
                    prefixIcon: InkWell(
                      onTap: () {
                        controller.isPasswordHidden.value =
                            !controller.isPasswordHidden.value;
                      },
                      child: Icon(controller.isPasswordHidden.value
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              );
            }),
            SizedBox(
              height: screenUtil.setHeight(30),
            ),
            CustomButtom(),
            SizedBox(
              height: screenUtil.setHeight(20),
            ),
            InkWell(
                onTap: () => _launcherUrl("doctor-code.net"),
                child: Text(
                  'Designd by Dr code',
                  style: TextStyle(fontSize: 20, color: Colors.blue[900]),
                )),
            SizedBox(
              height: screenUtil.setHeight(20),
            ),
            InkWell(
              onTap: (){
                Get.to(const ContactUs());
              },
              child: Center(
                child: Text(
                  "Contact Us",
                  style: TextStyle(fontSize: 20, color: Colors.blue[900]),
                ),
              ),
            )
          ],
        ));
  }
}
