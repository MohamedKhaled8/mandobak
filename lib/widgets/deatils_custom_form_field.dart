// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeatilsCutomFormField extends StatelessWidget {
   DeatilsCutomFormField({
    Key? key,
    required this.txt,
    this.ontap,
    this.fontSize  }) : super(key: key);
 final  double? fontSize;
  final String txt;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    ScreenUtil screenUtil = ScreenUtil();
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.all(5),
        height: screenUtil.setHeight(20),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                txt,
                style:  TextStyle(color: Color(0XFF003858)  ,fontSize: fontSize  ),
              )),
        ),
      ),
    );
  }
}
