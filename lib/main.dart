import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandobak/view/login_screen/login_screen_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(393, 852),
        builder: (context, child) {
          return  GetMaterialApp(
            title: 'Mandobak',
            debugShowCheckedModeBanner: false,
            home: LoginScreenView(),
          );
        });
  }
}
