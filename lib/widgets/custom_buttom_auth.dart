// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:mandobak/utils/constant/size.dart';

class CustomButtomContactUs extends StatelessWidget {
  final double sizeHigth;
  final double sizeWidth;
  final String text;
  final Function()? ontap;
  const CustomButtomContactUs({
    Key? key,
    required this.sizeHigth,
    required this.sizeWidth,
    required this.text,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: screenUtil.setHeight(sizeHigth),
        width: screenUtil.setWidth(sizeWidth),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blue[900],
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 16 , color: Colors.white),
          ),
        ),
      ),
    );
  }
}
