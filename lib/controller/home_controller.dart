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
}
