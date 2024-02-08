import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingController extends GetxController {
  final box = GetStorage();
  RxBool hideShearButton = false.obs;
  RxBool deleteAllData = true.obs;
  RxBool openInG = false.obs;
  RxBool isDark = true.obs;
  @override
  void onInit() {
    hideShearButton.value = box.read('hideShearButton') ?? false;
    deleteAllData.value = box.read('deleteAllData') ?? true;
    openInG.value = box.read('indexG') ?? false;
    isDark.value = box.read('isDark') ?? false;
    super.onInit();
  }

  ThemeData get theme {
    return isDark.value
        ? ThemeData.dark(
            useMaterial3: true,
          )
        : ThemeData.light(
            useMaterial3: true,
          );
  }

  switchDeleteAllData(bool val) {
    box.write('deleteAllData', val);
    deleteAllData.value = val;
  }

  switchHideShearButton(bool val) {
    box.write('hideShearButton', val);
    hideShearButton.value = val;
  }

  switchTheme(bool val) {
    box.write('isDark', val);
    isDark.value = val;
    Get.changeTheme(theme);
  }

  openInGMap(val) {
    box.write('indexG', val);
    openInG.value = val;
  }
}
