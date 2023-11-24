import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/main.dart';
import 'package:getx/view/home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                sharedPref!.setBool('login', true);
                Get.offAll(() => const HomeView());
              },
              child: const Text("Login")),
        ));
  }
}
