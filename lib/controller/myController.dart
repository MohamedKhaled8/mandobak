// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mandobak/model/item.dart';

class MyController extends GetxController   {

late PageController _pageController;
late TabController tabController;




  List<Item> value = [
    Item('title1'),
    Item('title1'),
    Item('title1'),
    Item('title1'),
    Item('title1'),
  ];


// ignore: unused_element


@override
  void dispose() {
   _pageController.dispose();
    super.dispose();
  }

 
 @override
  void onReady() {

    super.onReady();
  }

}









