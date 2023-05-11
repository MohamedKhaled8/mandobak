import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandobak/model/receipe_model.dart';

import '../../widgets/card_archive.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.receipe});
  final Receipe receipe;

  @override
  Widget build(BuildContext context) {
    ScreenUtil screenUtil = ScreenUtil();
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: screenUtil.setHeight(150),
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "تفاصيل الوصفة الطبية",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: screenUtil.setWidth(20),
                    ),
                    Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: screenUtil.setHeight(45),
                        width: screenUtil.setWidth(40),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Positioned(
              top: screenUtil.setHeight(110),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                width: MediaQuery.of(context).size.width,
                child: CardArchive(screenUtil: screenUtil, receipe: receipe),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// deatilsCutomFormField
// ignore: camel_case_types
