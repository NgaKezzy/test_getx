import 'package:get/route_manager.dart';
import 'package:test_getx/bindings/global_binding.dart';
import 'package:test_getx/page/detail_screen.dart';
import 'package:test_getx/page/my_home_page.dart';

class Routers {
  static String myHomePage = '/myHomePage';
  static String detailScreen = '/detailScreen';
}

class AppPages {
  static String getInitPage() {
    return Routers.myHomePage;
  }

  static final pages = [
    GetPage(
      name: Routers.myHomePage,
      page: () => const MyHomePage(),
      binding: MyHomePageBinding(),
    ),
    GetPage(
      name: Routers.detailScreen,
      page: () => const DetailScreen(),
      binding: MyHomePageBinding(),
    ),
  ];
}
