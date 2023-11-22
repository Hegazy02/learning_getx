import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/home_controller.dart';

class PageFive extends StatelessWidget {
  PageFive({super.key});
  final void lazy = Get.lazyPut(() => HomeController(), fenix: true);
  //اللازي بوت بتشتغل لما تلاقي فايند
  //اللازي بوت بطبيعتها بتشتغل مره واحده
  //يعني لما نلاقي فايند في صفحة هيعمل تعريف للكنترولر ولما نطلع من الصفحه الكنتورلر هيتمسح
  //عشان منخليش الكنترولر يمتسح
  //هنعمل فينيكس بترو
  //بس خد بالك الكنترولر متمسحش ولاكن الداتا رجعت لاصلها اتصفرت يعني!!!!

  //لو عايز البيانات تكون معايا ونا بتنقل بين الصفحات هستخدم بوت
  //لو مش عايز البيانات تكون معايا ونا بتنقل هستخدم لازي بوت
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page five"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(
              builder: (controller) => Text(
                "${controller.number}",
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
