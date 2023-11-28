import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/main.dart';
import 'package:getx/utils/theming/my_theme.dart';

class LocaleController extends GetxController {
  static Locale localeLang = sharedPref.getString('lang') == null
      ? Get.deviceLocale!
      : Locale(sharedPref.getString('lang')!);
  static late bool isDark;

  changeLang(String langCode) {
    localeLang = Locale(langCode);
    Get.updateLocale(localeLang);
    sharedPref.setString('lang', langCode);
  }

  static getisDark() {
    isDark = sharedPref.getBool("isDark") ?? false;
    print("isDark $isDark");
  }

  changeTheme() {
    print("isDark $isDark");
    if (isDark) {
      Get.changeTheme(MyTheme.customLightTheme);
      sharedPref.setBool("isDark", false);
      isDark = false;
    } else {
      Get.changeTheme(MyTheme.customDarkTheme);
      sharedPref.setBool("isDark", true);
      isDark = true;
    }
    print("isDark $isDark");
  }

  static getTheme() {
    if (isDark) {
      return MyTheme.customDarkTheme;
    } else {
      return MyTheme.customLightTheme;
    }
  }
}
