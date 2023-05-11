import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageTitle extends StatelessWidget {
  PageTitle({super.key});
  final ScreenUtil screenUtil = ScreenUtil();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[900],
        height: screenUtil.setHeight(60),
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    height: screenUtil.setHeight(60),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text(
                      "002156654654",
                      style: TextStyle(color: Colors.blue),
                    )),
                  ),
                )),
            SizedBox(
              width: screenUtil.setWidth(5),
            ),
            const Expanded(
              flex: 2,
              child: Text(
                " الرقم العشوائي الخاص بالزائر ",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
  }
}
