import 'package:get/get.dart';

class HomeController extends GetxController {
  int number = 0;
  RxInt sum = 0.obs;
  increament() {
    number++;
    update();
  }

  increaseSume() {
    sum++;
  }

  @override
  void onInit() {
    print("fetch data");
    super.onInit();
  }

  @override
  void onReady() {
    print("ready");
    super.onReady();
  }

  @override
  void onClose() {
    print("close data");
    super.onClose();
  }
}
