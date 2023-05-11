import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandobak/model/receipe_model.dart';

import '../../controller/fecth_data.dart';
import 'deatils_screen.dart';

class ArchiveScreen extends StatefulWidget {
  const ArchiveScreen({super.key});

  @override
  State<ArchiveScreen> createState() => _ArchiveScreenState();
}

class _ArchiveScreenState extends State<ArchiveScreen> {
  final controller = Get.put(FetchDataController());
  final cont = Get.put(FetchDataController());

  @override
  void initState() {
    if (controller.list.isEmpty) {
      controller.getReceip();
      controller.getArchive();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil screenUtil = ScreenUtil();
    return Scaffold(
        body: FutureBuilder<List<Receipe>>(
            future: controller.getArchive(),
            builder: (BuildContext, snapshot) {
              if (snapshot.hasError) {
             
              }
              if (snapshot.hasData) {
                return Padding(
                  padding: const EdgeInsets.only(
                      top: 20, right: 20, left: 20, bottom: 20),
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                        ),
                        height: screenUtil.setHeight(100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                // ignore: avoid_print
                              
                                Get.to(DetailsScreen(
                                    receipe: snapshot.data![index]));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      snapshot.data![index].alias!,
                                      style: const TextStyle(
                                          fontSize: 22, color: Colors.black),
                                    ),
                                    Text(
                                      snapshot.data![index].randomNumber
                                          .toString(),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff003858)),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, int index) {
                      return SizedBox(
                        height: screenUtil.setHeight(25),
                      );
                    },
                  ),
                );
              } else {
                return const CircularProgressIndicator();
              }
            }));
  }
}
