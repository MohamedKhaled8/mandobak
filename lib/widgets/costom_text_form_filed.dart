// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:mandobak/utils/constant/size.dart';

// ignore: must_be_immutable
class CutomTextFormFiled extends StatelessWidget {
  final String text;
  final TextInputType type;
  final double sizeHigth;
  final double sizeWidth;
  CutomTextFormFiled({
    Key? key,
    required this.text,
    required this.type,
    required this.validate,
    required this.controller,
    required this.sizeHigth,
    required this.sizeWidth,
  }) : super(key: key);

  FormFieldValidator? validate;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: screenUtil.setHeight(sizeWidth),
          vertical: screenUtil.setWidth(sizeHigth)),
      child: TextFormField(
        validator: validate,
        autofocus: false,
        // controller: controller,
        textInputAction: TextInputAction.next,
        onSaved: (newValue) {},
        keyboardType: type,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 3, color: Colors.grey.withOpacity(0.2)),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                BorderSide(width: 2, color: Colors.grey.withOpacity(0.3)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 2, color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 2, color: Colors.red),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          hintText: text,
          hintStyle:
              TextStyle(fontSize: 14, color: Colors.grey.withOpacity(0.9)),
          fillColor: Colors.white24,
          filled: true,
        ),
      ),
    );
  }
}
