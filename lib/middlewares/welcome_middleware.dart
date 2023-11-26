import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/main.dart';

class WelcomeMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;
  //اهميه الميدل وير دا هي الاولى يعني الاول هيعمل الفنكنشنز الي فيه وبعدين يروح للميدل وير الي بعدو
  @override
  RouteSettings? redirect(String? route) {
    if (sharedPref!.getString('welcome') != null) {
      return const RouteSettings(name: '/welcome');
    }
  }
}
