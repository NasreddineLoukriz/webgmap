import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webgmap/controllers/setting_controller.dart';

import '../../controllers/home_controller.dart';

class MainNavBar extends StatelessWidget {
  MainNavBar({super.key});
  final SettingController controller = Get.find();
  final HomeController newController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
              height: 60,
              margin: const EdgeInsets.only(
                  left: 10, right: 10, bottom: 10, top: 10),

              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Colors.blue),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ), //BoxDecoration
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      if (newController.index.value != 0) {
                        newController.onclick(0);
                      } //if
                    }, //onPressed
                    icon: newController.index.value == 0
                        ? const Icon(
                            Icons.info_rounded,
                            color: Colors.blue,
                          ) //Icon
                        : Icon(
                            Icons.info_outline_rounded,
                            color: controller.isDark.value
                                ? Colors.white
                                : Colors.black,
                          ), //Icon
                  ), //I
                  IconButton(
                    onPressed: () {
                      if (newController.index.value != 1) {
                        newController.onclick(1);
                      } //if
                    }, //onPressed
                    icon: newController.index.value == 1
                        ? const Icon(
                            Icons.settings_applications,
                            color: Colors.blue,
                          ) //Icon
                        : Icon(
                            Icons.settings_applications_outlined,
                            color: controller.isDark.value
                                ? Colors.white
                                : Colors.black,
                          ), //Icon
                  ), //IconButton

                  IconButton(
                    onPressed: () {
                      if (newController.index.value != 2) {
                        newController.onclick(2);
                      } //if
                    }, //onPressed
                    icon: newController.index.value == 2
                        ? const Icon(
                            Icons.home_rounded,
                            color: Colors.blue,
                          ) //Icon
                        : Icon(
                            Icons.home_outlined,
                            color: controller.isDark.value
                                ? Colors.white
                                : Colors.black,
                          ), //Icon
                  ), //IconButton

                  IconButton(
                    onPressed: () {
                      if (newController.index.value != 3) {
                        newController.onclick(3);
                      } //if
                    }, //onPressed
                    icon: newController.index.value == 3
                        ? const Icon(
                            Icons.not_listed_location_rounded,
                            color: Colors.blue,
                          ) //Icon
                        : Icon(
                            Icons.not_listed_location_outlined,
                            color: controller.isDark.value
                                ? Colors.white
                                : Colors.black,
                          ), //Icon
                  ), //IconButton
                  IconButton(
                    onPressed: () {
                      if (newController.index.value != 4) {
                        newController.onclick(4);
                      } //if
                    }, //onPressed
                    icon: newController.index.value == 4
                        ? const Icon(
                            Icons.map_rounded,
                            color: Colors.blue,
                          ) //Icon
                        : Icon(
                            Icons.map_outlined,
                            color: controller.isDark.value
                                ? Colors.white
                                : Colors.black,
                          ), //Icon
                  ), //IconButton
                ],
              ), //Row
            ) //Container
        ); //Obx
  } //build
} //MainNavBar
