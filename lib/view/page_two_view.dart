import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/home_controller.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page two"),
      ),
      body: GetX<HomeController>(
        //بتعمل ستريم على الكونترولر يعني مش محتاجه فنكشن الابديت عشان تعمل ريبلد للودجت بس بتستهلك ميموري اكتر
        //لو في اكتر من جيت اكس هيتمل ريبلد للي اتغير فيها حاجه بس الباقي مش هيعملو ريبلد
        init: HomeController(),
        builder: (controller) => Center(
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
                  child: const Text("increase")),
            ],
          ),
        ),
      ),
    );
  }
}
