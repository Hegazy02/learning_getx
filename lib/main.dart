import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/middlewares/auth_middleware.dart';
import 'package:getx/middlewares/welcome_middleware.dart';
import 'package:getx/services/settings_services.dart';
import 'package:getx/utils/my_bindings.dart';
import 'package:getx/view/home_view.dart';
import 'package:getx/view/login_view.dart';
import 'package:getx/view/welcome_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedPref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

Future initialServices() async {
  await Get.putAsync(() => SettingsServices().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
            middlewares: [AuthMiddleWare(), WelcomeMiddleWare()]),
        GetPage(
          name: '/home',
          page: () => const HomeView(),
        ),
        GetPage(
          name: '/welcome',
          page: () => const WelcomeView(),
        ),
      ],
    );
  }
}
