import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/home_controller.dart';

class PageSeven extends StatelessWidget {
  PageSeven({super.key});
  final controller = Get.find<HomeController>();
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
