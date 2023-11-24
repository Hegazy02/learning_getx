import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/main.dart';

class AuthMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (sharedPref!.getBool('login') != null) {
      return const RouteSettings(name: '/home');
    }
  }
}
