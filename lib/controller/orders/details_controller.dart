import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';
import '../../core/functions/handingdatacontroller.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/orders/customerdetails_data.dart';
import '../../data/datasource/remote/orders/details_data.dart';
import '../../data/model/ordersmodel.dart';

class OrdersDetailsController extends GetxController {
  OrdersDetailsData ordersDetailsData = OrdersDetailsData(Get.find());
  CustomerDetailsData customerdetailsData = CustomerDetailsData(Get.find());
  List data = [];
  String? customerphone;
  String? customername;
  late StatusRequest statusRequest;
  late OrdersModel ordersModel;
  MyServices myServices = Get.find();
  @override
  void onInit() {
    ordersModel = Get.arguments['ordersmodel'];
    getcustomerData();
    getData();
    super.onInit();
  }

  getData() async {
    data.clear;
    statusRequest = StatusRequest.loading;
    var response = await ordersDetailsData.getData(
        ordersModel.ordersId!.toString(),
        ordersModel.ordersUserstype!,);
    print("===============================OrdersDetailsController  $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success"){
        data = response['data'];
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  getcustomerData() async {
    statusRequest = StatusRequest.loading;
    var response = await customerdetailsData.customerData(
        ordersModel.ordersUsersid.toString()
    );
    print("===============================getcustomerData  $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success"){
         Map<String, dynamic> listdata2 = response['data'];
         customerphone= listdata2["users_phone"];
         customername= listdata2["users_name"];
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }


}