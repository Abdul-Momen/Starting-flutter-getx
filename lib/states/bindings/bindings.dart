import 'package:get/get.dart';
import 'package:luggage/states/controller/InitalController.dart';
import 'package:luggage/states/controller/connectivity_controller.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
     Get.lazyPut(() => InitialController());
     Get.lazyPut(() => ConnectivityController());
  }
}

