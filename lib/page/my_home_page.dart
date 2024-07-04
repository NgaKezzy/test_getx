import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:test_getx/controller/my_home_page_controller.dart';
import 'package:test_getx/router/routers.dart';

class MyHomePage extends GetView<MyHomePageController> {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(controller.data.toString())),
          Center(child: Text(controller.age.toString())),
          ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: Text('Tăng')),
          ElevatedButton(
              onPressed: () {
                Get.toNamed(Routers.detailScreen);
              },
              child: Text('Next'))
        ],
      ),
    ));
  }
}
