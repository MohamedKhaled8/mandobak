import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandobak/controller/fecth_data.dart';
import '../../controller/myController.dart';
import 'archive_screen.dart';
import 'events_screen.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  final controller = Get.put(MyController());
  final cont = Get.put(FetchDataController());

  @override
  Widget build(BuildContext context) {
    ScreenUtil screenUtil = ScreenUtil();
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
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
                child: const Center(
                  child: Text(
                    "مندوبك",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
                top: screenUtil.setHeight(110),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: screenUtil.setHeight(600),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: GetBuilder<MyController>(
                      builder: (controller) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: Column(
                            children: [
                              Container(
                                // height: 50,
                                width: MediaQuery.of(context).size.height,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: TabBar(
                                        unselectedLabelColor: Colors.white,
                                        labelColor: Colors.black,
                                        indicatorColor: Colors.white,
                                        indicatorWeight: 2,
                                        onTap: (value) {
                                          tabController.animateTo(value);
                                          controller.update();
                                          cont.getReceip();
                                        },
                                        indicator: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        controller: tabController,
                                        tabs: [
                                          GetBuilder<FetchDataController>(
                                              builder: (_) {
                                            return Row(
                                              children: [
                                                 Padding(
                                                  padding:
                                                      EdgeInsets.only(left: screenUtil.setWidth(75)),
                                                  child: const Tab(
                                                    child: Text(
                                                      "الارشيف ",
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                  ),
                                                ),
                                                 SizedBox(
                                                  width: screenUtil.setWidth(5),
                                                ),
                                                Image.asset(
                                                    "assets/images/archiev.png")
                                              ],
                                            );
                                          }),
                                          // ignore: prefer_const_constructors
                                          const Tab(
                                            child: Text(
                                              "الاحدث ",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: tabController,
                                  children:const  [
                                     ArchiveScreen(),
                                    EventsScreen(),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ))),
          ],
        ),
      ),
    );
  }
}
