import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandobak/model/receipe_model.dart';
import 'package:mandobak/widgets/deatils_custom_form_field.dart';

class BuildContainerItems extends StatelessWidget {
  const BuildContainerItems({
    Key? key,
    required this.screenUtil,
    required this.product,
  }) : super(key: key);

  final ScreenUtil screenUtil;
  final Products product;

  // final Products products;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5),
      child: Container(
        height: screenUtil.setHeight(300),
        width: screenUtil.setWidth(358),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: const Color(0xffF5F5F5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Container(
              height: screenUtil.setHeight(32),
              width: screenUtil.setWidth(120),
              decoration: BoxDecoration(
                  color: product.taken! ? Colors.green : Colors.grey,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(20))),
              child: Center(
                  child: Text(
                product.taken! ? "تم الصرف" : 'لم تصرف',
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20),
                  child: SizedBox(
                    height: screenUtil.setHeight(30),
                    child: const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'الاسم التجارى',
                          style:
                              TextStyle(color: Color(0xff000000), fontSize: 14),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: SizedBox(
                    height: screenUtil.setHeight(45),
                    child: DeatilsCutomFormField(
                      txt: product.commercialName!,
                      ontap: () {},
                      key: null,
                      fontSize: 16,
                    ),
                  ),
                ),
                 SizedBox(
                  height: screenUtil.setHeight(20),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, right: 20),
                  child: SizedBox(
                    height: screenUtil.setHeight(30),
                    child: const Align(
                        alignment: Alignment.topRight,
                        child: Text('الاسم العلمى',
                            style: TextStyle(
                                color: Color(0xff000000), fontSize: 14))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    height: screenUtil.setHeight(46),
                    child: DeatilsCutomFormField(
                      txt: product.scientificName!,
                      ontap: () {},
                      key: null,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenUtil.setHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: screenUtil.setHeight(55),
                      width: screenUtil.setWidth(50),
                      child: DeatilsCutomFormField(
                        txt: product.quantity!,
                        ontap: () {},
                        key: null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 20),
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
                      child: DeatilsCutomFormField(
                        txt: product.concentrate.toString(),
                        ontap: () {},
                        key: null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 20),
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
        ),
      ),
    );
  }
}