import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/screen/orders/accepted.dart';
import '../view/screen/orders/archive.dart';
import '../view/screen/orders/pending.dart';
import '../view/screen/settings.dart';
import 'orders/accepted_controller.dart';
import 'orders/pending_controller.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  List<Widget> listPage = [
    const OrdersPending(),
    const OrdersAccepted(),
    const Settings(),

  ];

  List bottomappbar = [
    {"title": "Pending", "icon": Icons.home},
    {"title": "Accepted", "icon": Icons.add_shopping_cart},
    {"title": "Settings", "icon": Icons.settings},

  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }





}