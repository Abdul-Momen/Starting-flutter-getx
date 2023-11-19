import 'package:get/state_manager.dart';
import 'package:get/get.dart';
import 'package:luggage/states/services/connectivity_service.dart';

class ConnectivityController extends GetxController {
  final ConnectivityService _connectivityService = ConnectivityService();

  RxBool isInternetConnected = false.obs;

  @override
  void onInit() {
    super.onInit();
    checkInternet();
  }

  Future<void> checkInternet() async {
    bool isConnected = await _connectivityService.checkConnection();
    isInternetConnected.value = isConnected;
  }
}
