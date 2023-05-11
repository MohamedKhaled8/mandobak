import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTableHeaderWidget extends StatelessWidget {
   CustomTableHeaderWidget({
    Key? key,
  }) : super(key: key);
final ScreenUtil screenUtil = ScreenUtil();
  @override
  Widget build(BuildContext context) {
    return Table(
      border: const TableBorder(
          verticalInside: BorderSide(color: Colors.black12, width: 2),
          horizontalInside: BorderSide(color: Colors.black12, width: 2)),
      children:  [
        TableRow(decoration: const BoxDecoration(color: Colors.blue), children: [
          SizedBox(
            height: screenUtil.setHeight(60),
            child: const Center(
              child: Text(
                'Medication&dose',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
           SizedBox(
            height: screenUtil.setHeight(60),
            child: const Center(
              child: Text(
                'qtv',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          
        ]),
      ],
    );
  }
}