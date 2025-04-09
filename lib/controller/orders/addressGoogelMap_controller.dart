import 'dart:async';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../core/services/services.dart';


class AddressgoogelmapController extends GetxController {
  late Completer<GoogleMapController> completercontroller;
  List<Marker> markers = [];
  double? lat;
  double? long;
  MyServices myServices = Get.find();
  CameraPosition? cameraPosition;

  intialData() {
    completercontroller = Completer<GoogleMapController>();
    cameraPosition = CameraPosition(
      target: LatLng(lat!, long!),
      zoom: 12.4746,
    );
    markers.add(
        Marker(
            markerId: MarkerId("1"),
            position: LatLng(lat!, long!)
        )
    );

  }

  @override
  void onInit() {
    lat = Get.arguments['lat'];
    long = Get.arguments['long'];
    intialData();
    super.onInit();
  }

}