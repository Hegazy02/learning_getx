import 'package:get/get.dart';
import 'package:getx/controller/home_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    // Get.put(HomeController());
    //مش خنحتاج نستخدم البيرمننت عشان نحفتظ بالداتا لو البيمدنجز مطبقه على مستوى التطبيق في الجيت ماتيريال اب
    //لو طبقت طريقة البوت على مستولا الاب فنكشن ال اون انيت هشهتفل اول ما التطبيق يشتغل
    //انا لما لو عايز الفنكشن تشتغل لما افتح صفحة معينة يبقا احط فايند في الصفحة دي واستخدم اللازي بوت
    // Get.put(HomeController(), permanent: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    //لو استخدمت اللازي بوت البيانات هتروح عند التنقل بين الصفحات
  }
}
