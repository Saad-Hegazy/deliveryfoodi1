import '../../../../core/class/crud.dart';
import '../../../../linkapi.dart';

class OrdersPendingData {
  Crud crud;
  OrdersPendingData(this.crud);
  getData() async {
    var response = await crud.postData(AppLink.pendingOrders, {});
    return response.fold((l) => l, (r) => r);
  }
  approveOrder(String deliveryid ,String ordersid ,String userid) async {
    var response = await crud.postData(AppLink.approveOrders, {
      "deliveryid" :deliveryid,
      "ordersid": ordersid,
      "usersid":userid,
    });
    return response.fold((l) => l, (r) => r);
  }
}