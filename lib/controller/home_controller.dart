import 'package:get/get.dart';

class HomeController extends GetxController {
  int number = 0;
  RxInt sum = 0.obs;
  var arg;
  increament() {
    number++;
    update();
  }

  increaseSume() {
    sum++;
  }

  @override
  void onInit() {
    //الفنشكن دي اول فنكشن بتشتغل عند تعريف الكونترولر
    //التعريف ممكن يكون من خلال بوت او لازي بوت
    print("fetch data");
    arg = Get.arguments;
    print("argggg  $arg");

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
