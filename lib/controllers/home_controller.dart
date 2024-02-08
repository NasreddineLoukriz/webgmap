import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:webgmap/controllers/setting_controller.dart';
import 'package:webgmap/view/pages/nav.dart';
import 'package:webgmap/view/pages/settings.dart';

import '../view/pages/about.dart';
import '../view/pages/google_map.dart';
import '../view/pages/howto.dart';

class HomeController extends GetxController {
  WebStorageManager webStorageManager = WebStorageManager.instance();
  CookieManager cookieManager = CookieManager.instance();
  SettingController controller = Get.put(SettingController());
  final url = WebUri("https://www.google.com/maps/");
  RxInt index = 2.obs;
  String name = '';
  @override
  void onInit() {
    index.value = (controller.openInG.value) ? 4 : 2;
    super.onInit();
  }

  onclick(index) async {
    if (this.index.value == 4 && index != 4 && controller.deleteAllData.value) {
      await webStorageManager.deleteAllData();
      await cookieManager.deleteCookies(url: url, domain: ".google.com");
    }
    this.index.value = index;
  }

  List screens = [
    const About(),
    Settings(),
    const Nav(),
    const HowTO(),
    GMap(),
  ];
}
