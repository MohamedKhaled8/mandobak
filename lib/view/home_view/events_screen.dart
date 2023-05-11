import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mandobak/controller/fecth_data.dart';
import '../../widgets/card_event.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
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
    return GetBuilder<FetchDataController>(
      builder: (_) => Scaffold(
          body: Padding(
        padding:
            const EdgeInsets.only(top: 10, right: 30, left: 30, bottom: 10),
        child: CardEvent(
          color: Colors.blue,
          tex: 'ارشفة',
          AssetImage: "assets/images/archiev.png",
        ),
      )),
    );
  }
}
