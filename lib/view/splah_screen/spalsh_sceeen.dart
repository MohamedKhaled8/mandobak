import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mandobak/controller/authController.dart';
import 'package:mandobak/view/home_view/home_screen_view.dart';
import 'package:mandobak/utils/helper/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import '../home_view/auth_container.dart';
import '../login_screen/login_screen_view.dart';

class SpashScreen extends StatefulWidget {
  const SpashScreen({super.key});

  @override
  State<SpashScreen> createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> {
  final controller = Get.put(AuthLoginScreen());
  @override
  void initState() {
    super.initState();

    init();
  }

  void init() async {
    await Future.delayed(const Duration(seconds: 7));
    SharedPreferences preferences = await SharedPreferences.getInstance();

    int statusCode  = 0;
    if (preferences.getString("user") != null &&
        preferences.getString("password") != null) {
      statusCode = await controller.postLoginData(
          password: preferences.getString("password")!,
          user: preferences.getString("user")!);
    }
    if (statusCode == 200) {
      Get.off(() => HomeScreenView());
    } else {
      Get.off(() => LoginScreenView());
    }
  }

  Future<void> _launcherUrl(String? url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not  launcger url";
    }
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //final Uri uri = Uri.parse("https://doctor-code.net/");
    return Scaffold(
      backgroundColor: const Color(0xffededed),
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.3,
              ),
              Image.asset(
                'assets/images/mandobak.png',
                height: size.height * 0.3,
              ),
              SizedBox(
                height: size.height * 0.3,
              ),
              InkWell(
                  onTap: () => _launcherUrl("doctor-code.net"),
                  child: const Text('Designd by Dr code')),
            ],
          )),
    );
  }
}
//launchUrl(uri);