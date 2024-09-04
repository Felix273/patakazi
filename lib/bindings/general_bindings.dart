import 'package:get/get.dart';
import 'package:patakazi/data/services/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}
