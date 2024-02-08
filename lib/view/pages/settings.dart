import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webgmap/controllers/setting_controller.dart';

class Settings extends StatelessWidget {
  Settings({super.key});
  final SettingController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      children: [
        Row(
          children: [
            const Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    'delete all data ',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
            Expanded(
              flex: 1,
              child: Obx(
                () => Switch(
                    value: controller.deleteAllData.value,
                    onChanged: (boo) {
                      controller.switchDeleteAllData(boo);
                    }),
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          children: [
            const Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    'hide the shear button ',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
            Expanded(
              flex: 1,
              child: Obx(
                () => Switch(
                    value: controller.hideShearButton.value,
                    onChanged: (boo) {
                      controller.switchHideShearButton(boo);
                    }),
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          children: [
            const Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    'dark theme ',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
            Expanded(
              flex: 1,
              child: Obx(
                () => Switch(
                    value: controller.isDark.value,
                    onChanged: (boo) {
                      controller.switchTheme(boo);
                    }),
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          children: [
            const Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    'Open The App On Gmap ',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
            Expanded(
              flex: 1,
              child: Obx(
                () => Switch(
                    value: controller.openInG.value,
                    onChanged: (boo) {
                      controller.openInGMap(boo);
                    }),
              ),
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
