import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../controller/orders/addressGoogelMap_controller.dart';
import '../../../core/constant/color.dart';
class Addressgoogelmap extends StatelessWidget {
  const Addressgoogelmap({super.key});
  @override
  Widget build(BuildContext context) {
    AddressgoogelmapController controller = Get.put(AddressgoogelmapController());
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: AppColor.primaryColor,
        title: const Text('Address Details',style: TextStyle(
            color:Colors.white)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GetBuilder<AddressgoogelmapController>(
            builder: ((controller) => ListView(children: [
              Card(
                child: Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 300,
                  width: double.infinity,
                  child: GoogleMap(
                    mapType: MapType.normal,
                    markers: controller.markers.toSet(),
                    initialCameraPosition: controller.cameraPosition!,
                    onMapCreated: (GoogleMapController controllermap) {
                      controller.completercontroller
                          .complete(controllermap);
                    },
                  ),
                ),
              )
            ]))),
      ),
    );
  }
}