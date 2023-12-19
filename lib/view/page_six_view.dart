import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/home_controller.dart';

class PageSix extends StatelessWidget {
  PageSix({super.key});
  final HomeController controller = Get.find<HomeController>();
  //هنا بقولو دور على لازي بوت متعرفه قبل كدا ومن خلالها اعمل تعريف للكنترولور
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page six"),
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
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () => controller.increament(),
            )
          ],
        ),
      ),
    );
  }
}
