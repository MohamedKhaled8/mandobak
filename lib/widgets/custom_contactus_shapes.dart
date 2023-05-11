import 'package:flutter/material.dart';
import 'package:mandobak/utils/constant/size.dart';
import 'package:mandobak/widgets/costom_text_form_filed.dart';
import 'package:mandobak/widgets/custom_buttom_auth.dart';
import 'package:mandobak/widgets/custom_multi_text_form_field_widgets.dart';

class CustomContactUs extends StatelessWidget {
  CustomContactUs({
    super.key,
  });
  final TextEditingController nameCont = TextEditingController();
  final TextEditingController phoneCont = TextEditingController();
  final TextEditingController mailCont = TextEditingController();
  final TextEditingController subjectCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: screenUtil.setHeight(105),
                    width: screenUtil.setWidth(105),
                    decoration: BoxDecoration(
                        color: const Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            margin:
                                EdgeInsets.only(top: screenUtil.setHeight(10)),
                            height: screenUtil.setHeight(65),
                            width: screenUtil.setWidth(85),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/f.png",
                                  ),
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("Mail")),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: screenUtil.setWidth(20),
              ),
              Column(
                children: [
                  Container(
                    height: screenUtil.setHeight(105),
                    width: screenUtil.setWidth(105),
                    decoration: BoxDecoration(
                        color: const Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            margin:
                                EdgeInsets.only(top: screenUtil.setHeight(10)),
                            height: screenUtil.setHeight(65),
                            width: screenUtil.setWidth(85),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/q.png",
                                  ),
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("Phone")),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: screenUtil.setWidth(20),
              ),
              Column(
                children: [
                  Container(
                    height: screenUtil.setHeight(105),
                    width: screenUtil.setWidth(105),
                    decoration: BoxDecoration(
                        color: const Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            margin:
                                EdgeInsets.only(top: screenUtil.setHeight(10)),
                            height: screenUtil.setHeight(65),
                            width: screenUtil.setWidth(85),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/a`.png" ,
                                    
                                  ),
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("Webiste")),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: screenUtil.setHeight(25),
          ),
          Text(
            "Have any questions ? We love to hear from you.",
            style: TextStyle(
                fontSize: screenUtil.setHeight(18), color: Colors.black),
          ),
          SizedBox(
            height: screenUtil.setHeight(25),
          ),
          CutomTextFormFiled(
            controller: nameCont,
            sizeHigth: 10,
            sizeWidth: 10,
            text: 'Name',
            type: TextInputType.name,
            validate: (value) {},
          ),
          CutomTextFormFiled(
            controller: phoneCont,
            sizeHigth: 10,
            sizeWidth: 10,
            text: 'Phone',
            type: TextInputType.phone,
            validate: (value) {},
          ),
          CutomTextFormFiled(
            controller: mailCont,
            sizeHigth: 10,
            sizeWidth: 10,
            text: 'Mail',
            type: TextInputType.emailAddress,
            validate: (value) {},
          ),
          CutomTextFormFiled(
            controller: subjectCont,
            sizeHigth: 10,
            sizeWidth: 10,
            text: 'Subject',
            type: TextInputType.text,
            validate: (value) {},
          ),
          const MultiTextFormField(
            sizeHigth: 5,
            sizeWidth: 5,
          ),
          SizedBox(
            height: screenUtil.setHeight(20),
          ),
          CustomButtomContactUs(
            ontap: () {},
            sizeHigth: 50,
            sizeWidth: 350,
            text: 'Contact us',
          ),
        ],
      ),
    );
  }
}
