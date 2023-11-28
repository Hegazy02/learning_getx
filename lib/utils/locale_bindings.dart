import 'package:get/get.dart';
import 'package:getx/localization/locale_controller.dart';

class LocaleBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocaleController(), fenix: true);
  }
}
