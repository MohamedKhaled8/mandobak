// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandobak/widgets/build_container_items.dart';

import '../controller/fecth_data.dart';
import '../model/receipe_model.dart';
import 'deatils_custom_form_field.dart';

class CardArchive extends StatelessWidget {
  CardArchive({
    Key? key,
    required this.screenUtil,
    required this.receipe,
  }) : super(key: key);

  final ScreenUtil screenUtil;
  final Receipe receipe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    receipe.createdAt!,
                    style: const TextStyle(fontSize: 18, color: Color(0xff003858)),
                  ),
                  Text(
                    receipe.doctorName!,
                    style: const TextStyle(fontSize: 22, color: Color(0xff003858)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    receipe.randomNumber.toString(),
                    style: const TextStyle(fontSize: 22, color: Color(0xff003858)),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: screenUtil.setHeight(20),
          ),
          SizedBox(
              height: screenUtil.screenHeight * 0.7,
              child: receipe.products!.isEmpty
                  ? const Center(
                      child: Text('لا يوجد'),
                    )
                  : ListView.separated(
                      itemBuilder: (context, index) {
                        return BuildContainerItems(
                          product: receipe.products![index],
                          screenUtil: screenUtil,
                        );
                      },
                      // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                      separatorBuilder: (BuildContext, index) {
                        return SizedBox(
                          height: screenUtil.setHeight(20),
                        );
                      },
                      itemCount: receipe.products!.length))
        ],
      ),
    );
  }
}


