import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/home_controller.dart';

class PageFive extends StatelessWidget {
  PageFive({super.key});
  final void lazy = Get.lazyPut(() => HomeController(), fenix: true);
  //اللازي بوت بتشتغل لما تلاقي فايند
  //اللازي بوت بطبيعتها بتشتغل مره واحده
  //يعني لما نلاقي فايند في صفحة هيعمل تعريف للكنترولر ولما نطلع من الصفحه الكنتورلر هيتمسح

  //يعني لو هي في محطوطة في الهوم سكرين مثلا ودخلت على صفحة تانية فيها فايند ورجعت للهوم تاني هو هنا عارف اني استخدمت الازي مره قبل كدا فمش هيستخدمها تاني عشان الهوم موجوده معايا في الستاك وهيصحل ايريرو لما افتح صفحة الفايند تاني
  //انما لو حطيت اللازي في صفحة والصفحة دي بتتمسح من الستاك فا كل مره هفتح الصفحة دي هقدر استخدم اللازي بوت مع الفايند تاني عشان هنا لبرنامج بيتعامل انو الازي دي اول مره يشوفها

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
