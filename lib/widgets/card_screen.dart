import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'deatils_custom_form_field.dart';

class CardView extends StatelessWidget {
  const CardView({
    super.key,
    required this.screenUtil,
  });

  final ScreenUtil screenUtil;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenUtil.setHeight(32),
          width: screenUtil.setWidth(120),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: const Center(
              child: Text(
            "تم الصرف",
            style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          )),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, right: 20),
              child: SizedBox(
                height: screenUtil.setHeight(30),
                child: const Align(
                    alignment: Alignment.topRight,
                    child: Text("الاسم التجارى")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10 , top: 5),
              child: SizedBox(
                height: screenUtil.setHeight(45),
                child: DeatilsCutomFormField(txt: 'الاسم التجارى للدواء بالكامل', ontap: (){}, key: null,),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 0, right: 20),
              child: SizedBox(
                height: screenUtil.setHeight(30),
                child: const Align(
                    alignment: Alignment.topRight,
                    child: Text('الاسم العلمى')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10),
              child: SizedBox(
                height: screenUtil.setHeight(46),
                child: DeatilsCutomFormField(txt: 'The full scientific name of the drug', ontap: (){}, key: null,),
              ),
            ),
            SizedBox(
              height: screenUtil.setHeight(20),
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: screenUtil.setHeight(55),
                  width: screenUtil.setWidth(50),
                  child: DeatilsCutomFormField(txt: '4', ontap: (){}, key: null,),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, right: 20),
                  child: SizedBox(
                    height: screenUtil.setHeight(50),
                    child: const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "الكمية",
                          style: TextStyle(fontSize: 18),
                        )),
                  ),
                ),
                SizedBox(
                  height: screenUtil.setHeight(55),
                  width: screenUtil.setWidth(55),
                  child: DeatilsCutomFormField(txt: '200', ontap: (){}, key: null,),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, right: 20),
                  child: SizedBox(
                    height: screenUtil.setHeight(50),
                    child: const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "التركيز",
                          style: TextStyle(fontSize: 18),
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}