import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:webgmap/controllers/g_controller.dart';
import 'package:webgmap/controllers/setting_controller.dart';

import '../widgets/g_web_view.dart';

class GMap extends StatelessWidget {
  GMap({super.key});

  final SettingController sController = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GController>(
      builder: (controller) => Scaffold(
        floatingActionButton: (sController.hideShearButton.value == false)
            ? FloatingActionButton(
                onPressed: () async {
                  Share.share(await controller.getUrlToS());
                },
                backgroundColor: Colors.cyan,
                child: const Icon(
                  Icons.share,
                ),
              )
            : null,
        body: GWebView(),
      ),
    );
  }
}
