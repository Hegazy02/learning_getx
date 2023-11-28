import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/constants/localization_constants.dart';
import 'package:getx/localization/locale_controller.dart';

class LanguageView extends StatelessWidget {
  LanguageView({super.key});
  LocaleController control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(LocalizationConstants.language.tr),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    control.changeLang("ar");
                  },
                  child: const Text("Change language to Arabic")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    control.changeLang("en");
                  },
                  child: const Text("Change language to English")),
            ],
          ),
        ),
      ),
    );
  }
}
