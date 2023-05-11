import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTableEndWidget extends StatelessWidget {
  CustomTableEndWidget({
    Key? key,
  }) : super(key: key);
  final ScreenUtil screenUtil = ScreenUtil();

  @override
  Widget build(BuildContext context) {
    return Table(
      border: const TableBorder(
          verticalInside: BorderSide(color: Colors.black12, width: 2),
          horizontalInside: BorderSide(color: Colors.black12, width: 0)),
      children: [
        TableRow(children: [
          Row(
            children: [
              Container(
                height: screenUtil.setHeight(60),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: const Center(
                  child: Text(
                    "Doctor Name :",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: screenUtil.setHeight(60),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
            child: const Text(
              "Mohamed Khaled :",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ]),
      ],
    );
  }
}
