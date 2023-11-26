import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/main.dart';
import 'package:getx/view/login_view.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  sharedPref!.remove('Welcome');
                  Get.offAll(
                    () => const LoginView(),
                  );
                },
                child: const Text("Logout")),
          ],
        ),
      ),
    ));
  }
}
