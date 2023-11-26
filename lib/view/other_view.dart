import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/services/settings_services.dart';

class OtherView extends GetView<SettingsServices> {
  const OtherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<SettingsServices>(
              builder: (c) => Text("${c.counter.value}"),
            ),
            ElevatedButton(
                onPressed: () => controller.increaseCounter(),
                child: const Text("Increase")),
            ElevatedButton(
                onPressed: () => controller.clearCounterFromCash(),
                child: const Text("clear from cash")),
          ],
        ),
      ),
    );
  }
}
