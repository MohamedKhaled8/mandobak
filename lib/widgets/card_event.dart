// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandobak/controller/fecth_data.dart';
import 'package:mandobak/view/home_view/deatils_screen.dart';

// ignore: must_be_immutable
class CardEvent extends StatelessWidget {
  final controller = Get.put(FetchDataController());
  CardEvent({
    Key? key,
    // ignore: non_constant_identifier_names
    required this.AssetImage,
    this.ontap,
    required this.tex,
    required this.color,
  }) : super(key: key);
  final Color color;
  final Function()? ontap;
  final String tex;
  // ignore: non_constant_identifier_names
  String AssetImage;
  @override
  Widget build(BuildContext context) {
    final cont = Get.put(FetchDataController());

    ScreenUtil screenUtil = ScreenUtil();
    return GetBuilder<FetchDataController>(builder: (_) {
      return ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: controller.list.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
              color: Colors.white,
            ),
            height: screenUtil.setHeight(100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               
              children: [
                InkWell(
                  onTap: () async {
              

                    await cont
                        .postArchive(cont.list[index].randomNumber!)
                        .then((value) async {
                      await controller.getReceip();
                      cont.update();
                    });
                  },
                  child: Container(
                    height: screenUtil.setHeight(110),
                    width: screenUtil.setWidth(70),
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [
                        Image.asset(AssetImage, color: Colors.white),
                        Center(
                            child: Text(
                          tex,
                          style: const TextStyle(
                              fontSize: 18, color: Colors.white),
                        )),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // ignore: avoid_print
                    print(controller.list);
                    Get.to(() => DetailsScreen(
                          receipe: controller.list[index],
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                       crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          controller.list[index].alias!,
                          style: const TextStyle(
                              fontSize: 22, color: Color(0xff003858)),
                        ),
                        Text(
                          controller.list[index].randomNumber.toString(),
                          style: const TextStyle(
                              fontSize: 18, color: Color(0xff003858)),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: screenUtil.setHeight(25),
          );
        },
      );
    });
  }
}
