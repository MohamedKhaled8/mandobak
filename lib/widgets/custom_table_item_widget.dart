import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


// ignore: must_be_immutable
class CustomTableItemWidget extends StatelessWidget {
  CustomTableItemWidget({
    required this.onChnaged,
    required this.rowText,
    required this.val,
    Key? key,
  }) : super(key: key);
  String? rowText;
  Function(bool? val) onChnaged;
  bool? val;
  final ScreenUtil screenUtil = ScreenUtil();

  @override
  Widget build(BuildContext context) {
    return Table(
      border: const TableBorder(
          verticalInside: BorderSide(color: Colors.black12, width: 2),
          horizontalInside: BorderSide(color: Colors.black12, width: 2)),
      children: [
        TableRow(children: [
          Row(
            children: [
              Container(
                height: screenUtil.setHeight(60),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Center(
                  child: Text(
                    rowText!,
                    style: const TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
              ),
              Checkbox(
                value: val,
                onChanged: (value) {
                  onChnaged(value);
                },
              ),
            ],
          ),
          Container(
            height: screenUtil.setHeight(60),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            child: const Text('0'),
          ),
        ]),
      ],
    );
     // ignore: dead_code
    
  }
}
