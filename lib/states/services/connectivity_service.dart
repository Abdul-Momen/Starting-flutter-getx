import 'package:connectivity/connectivity.dart';
import 'package:get/get.dart';

class ConnectivityService extends GetConnect {
  Future<bool> checkConnection() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }
}