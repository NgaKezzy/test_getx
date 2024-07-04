import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:test_getx/controller/my_home_page_controller.dart';
import 'package:test_getx/router/routers.dart';

class DetailScreen extends GetView<MyHomePageController> {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(() => Text(controller.data.toString())),
          ),
          ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: Text('Tăng')),
          ElevatedButton(
              onPressed: () {
                Get.toNamed(Routers.myHomePage);
              },
              child: Text('Back'))
        ],
      ),
    );
  }
}
