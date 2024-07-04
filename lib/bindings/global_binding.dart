import 'package:get/instance_manager.dart';
import 'package:test_getx/controller/my_home_page_controller.dart';

class MyHomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyHomePageController());
  }
}
