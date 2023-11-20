import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/home_controller.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page one"),
      ),
      body: GetBuilder<HomeController>(
        //بتعتمد على انك تشغل فنكشن الابديت عشان تعمل ريبلد للويدجت
        init: HomeController(),
        //بعمل تعريف للكونترلر اول مره بس بعد كدا بستخدم الجيت بلدر او جيت اكس منغير ما اعرف نفس الكونترولر تاني
        //لو حصل تغيير في جيت بيلد واحده هيعتمل ريها ريبلد هي وكل الجيت بيلدز الي بياخدو نفس الكونترولر حتى لو متغيرش فيهم حاجةلهف

        builder: (controller) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "${controller.number}",
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
