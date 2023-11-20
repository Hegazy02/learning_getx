import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/home_controller.dart';

class PageThree extends StatelessWidget {
  PageThree({super.key});
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page three"),
      ),
      body: Obx(
        //بتعتمد على الستريم وبتاخد كنترولرز كتير بس بتفشخ الرام
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "${controller.sum.value}",
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () => controller.increaseSume(),
                  child: const Text("increase"))
            ],
          ),
        ),
      ),
    );
  }
}
