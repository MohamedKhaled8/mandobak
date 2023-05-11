import 'package:get/get.dart';
import 'package:mandobak/controller/myController.dart';

import '../../controller/authController.dart';
import '../../controller/fecth_data.dart';

class Bnding extends Bindings {
  @override
  void dependencies() {
  Get.lazyPut(() => MyController());
  Get.lazyPut(() => AuthLoginScreen());
  Get.lazyPut(() => FetchDataController());
  }

}