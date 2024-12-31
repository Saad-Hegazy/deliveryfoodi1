import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/orders/pending_controller.dart';

class FcmService{
  static void firbaseInit(){
    FirebaseMessaging.onMessage.listen((massage){
      OrdersPendingController ordersPendingController= Get.put(OrdersPendingController());
      ordersPendingController.getOrders();
      print(massage.notification!.title);
      print(massage.notification!.body);
    });
  }
}