// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mandobak/utils/constant/size.dart';

class MultiTextFormField extends StatelessWidget {
  final double sizeHigth;
  final double sizeWidth;
  const MultiTextFormField({
    Key? key,
    required this.sizeHigth,
    required this.sizeWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: screenUtil.setWidth(sizeWidth),
          vertical: screenUtil.setHeight(sizeHigth)),
      child: TextFormField(
        maxLines: 5,
        validator: (value) {},
        autofocus: false,
        // controller: controller,
        textInputAction: TextInputAction.next,
        onSaved: (newValue) {},
        keyboardType: TextInputType.text,
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
          contentPadding: EdgeInsets.symmetric(
              horizontal: screenUtil.setWidth(20),
              vertical: screenUtil.setHeight(20)),
          hintText: "Description",
          hintStyle:
              TextStyle(fontSize: 18, color: Colors.grey.withOpacity(0.9)),
          fillColor: Colors.white24,
          filled: true,
        ),
      ),
    );
  }
}
