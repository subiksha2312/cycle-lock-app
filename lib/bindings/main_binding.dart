import 'package:cycle_lock/controllers/main_controller.dart';
import 'package:cycle_lock/controllers/map_controller.dart';
import 'package:cycle_lock/controllers/scan_controller.dart';
import 'package:get/instance_manager.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
    Get.put(ScanningController());
    Get.put(MapController());
  }
}
