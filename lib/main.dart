import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/middlewares/auth_middleware.dart';
import 'package:getx/utils/my_bindings.dart';
import 'package:getx/view/home_view.dart';
import 'package:getx/view/login_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',

      initialBinding: MyBindings(),
      //لو هنستخدم البيندينجز هنحتاج نعمل فايند في الصفح الي هنستخدم فيها الكونترولر
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      getPages: [
        GetPage(
            name: '/',
            page: () => const LoginView(),
            middlewares: [AuthMiddleWare()]),
        GetPage(
          name: '/home',
          page: () => const HomeView(),
        ),
      ],
    );
  }
}
