import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import '../../controllers/setting_controller.dart';
import '../widgets/main_nav_bar.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final HomeController controller = Get.find();
  final SettingController sController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => PopScope(
            canPop: (controller.index.value == 2) ? true : false,
            onPopInvoked: (pop) {
              if (controller.index.value == 4 &&
                  sController.deleteAllData.value) {
                controller.onclick(2);
              } else {
                controller.onclick(2);
              }
            },
            child: Scaffold(
              body: controller.screens[controller.index.value],
              bottomNavigationBar: MainNavBar(),
            ),
          ),
        ),
      ),
    );
  }
}
