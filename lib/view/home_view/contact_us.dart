import 'package:flutter/material.dart';
import 'package:mandobak/utils/constant/size.dart';

import '../../widgets/custom_contactus_shapes.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[900],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: screenUtil.setHeight(125),
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenUtil.setWidth(20)),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: screenUtil.setWidth(130),
                    ),
                    const Text(
                      "Countact Us",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenUtil.setHeight(10),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height - 120,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenUtil.setWidth(10),
                        vertical: screenUtil.setHeight(40)),
                    child: CustomContactUs()),
                  
              ),
           
            ],
          ),
        ),
      ),
    );
  }
}
