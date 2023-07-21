import 'package:get/get.dart';
import 'package:solid_demo/pages/home/home_binding.dart';
import 'package:solid_demo/pages/home/home_page.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static List<GetPage> pages = [
    GetPage(
      name: homeScreen,
      page: () => const HomePage(),
      bindings: [
        HomeBinding(),
      ],
    ),
  ];
}
