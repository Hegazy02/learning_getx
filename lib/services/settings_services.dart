import 'package:get/get.dart';
import 'package:getx/localization/locale_controller.dart';
import 'package:getx/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsServices extends GetxService {
  RxInt counter = 0.obs;

  Future<SettingsServices> init() async {
    sharedPref = await SharedPreferences.getInstance();
    counter.value = sharedPref.getInt('counter') ?? 0;
    LocaleController.getisDark();
    return this;
  }

  increaseCounter() async {
    counter.value++;
    await sharedPref.setInt('counter', counter.value);
  }

  clearCounterFromCash() {
    counter.value = 0;

    sharedPref.remove('counter');
  }
}
