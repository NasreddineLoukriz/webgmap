import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:webgmap/controllers/g_controller.dart';
import 'package:webgmap/controllers/home_controller.dart';
import 'package:webgmap/controllers/setting_controller.dart';
import 'package:webgmap/view/pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final SettingController controller = Get.put(SettingController());
  final HomeController hController = Get.put(HomeController());
  final GController gController = Get.put(GController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: controller.theme,
      themeMode: ThemeMode.light,
      home: Home(),
    );
  }
}
