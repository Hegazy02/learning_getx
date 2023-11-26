import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/home_controller.dart';

class PageFour extends StatelessWidget {
  PageFour({super.key});
  //استخدمت ال Dependency injection
  //عملت حقن للكنترولر
  HomeController controller = Get.put(HomeController(), permanent: true);
  //لما بستخدم البرمينانت كدا الداتا هتفضل في الكنترولر مش هتتمسح لما اطلع من السكرين
  //بس البيانات هتتصفر هنا لو مستخدم انشيال بيندينج في الجيت ماتريال عشان دا في الصفحة دي انا بعمل انستانس جديد حتى لو عامل برميننت بترو
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page four"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(
              // init: HomeController(),
              //لما بعمل حقن كدا انا عرفت الكنترولر خلاص ومش محتاج اعرفو في ال ان ايت تاني
              builder: (controller) => Text(
                "${controller.number}",
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () => controller.increament(),
                child: const Text("increase"))
          ],
        ),
      ),
    );
  }
}
