import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/main.dart';

class AuthMiddleWare extends GetMiddleware {
  @override
  int? get priority => 2;
  //اهميه الميدل وير دا التانية يعني في حد اهم منو
  @override
  RouteSettings? redirect(String? route) {
    if (sharedPref.getBool('login') != null) {
      return const RouteSettings(name: '/home');
    }
  }
}
