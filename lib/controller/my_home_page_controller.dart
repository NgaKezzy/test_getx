import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MyHomePageController extends GetxController {
  final _data = 5.obs;
  int get data => _data.value; 

  final _age = 10.obs;
  int get age => _age.value;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print('hello word');
  }
  

  void increment() {
    _data.value = _data.value + 1;
    _age.value = _age.value + 1;
  }
}
