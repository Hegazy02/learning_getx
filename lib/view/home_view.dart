import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/constants/localization_constants.dart';
import 'package:getx/controller/home_controller.dart';
import 'package:getx/localization/locale_controller.dart';
import 'package:getx/main.dart';
import 'package:getx/utils/locale_bindings.dart';
import 'package:getx/view/language_view.dart';
import 'package:getx/view/login_view.dart';
import 'package:getx/view/other_view.dart';
import 'package:getx/view/page_eight.dart';
import 'package:getx/view/page_five_view.dart';
import 'package:getx/view/page_four_view.dart';
import 'package:getx/view/page_one_view.dart';
import 'package:getx/view/page_seven_view.dart';
import 'package:getx/view/page_six_view.dart';
import 'package:getx/view/page_three_view.dart';
import 'package:getx/view/page_two_view.dart';
import 'package:getx/view/welcome_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  // Get.to(const PageOne()); // == push بتحط صفحة جديدة فوق الحالية
  // Get.off(
  //     const PageOne()); //== pushReplacement  بتلغي الصفحة الي كانت فيها وتخلي الصفجة الجديدة مكانها
  // Get.offAll(
  //     const PageOne()); //== pushAndRemoveUntil بتلغي كل الصفحات الي فوق بعض حاليا ومابتخليش غير الجديدة الي رايحنلها
  // Get.toNamed("/pageOne"); //== pushNamed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(LocalizationConstants.home.tr),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () => Get.to(() => const PageOne()),
                  child: const Text("Page one")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () => Get.to(() => const PageTwo()),
                  child: const Text("Page two")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () => Get.to(() => PageThree()),
                  child: const Text("Page three")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () => Get.to(() => PageFour()),
                  child: const Text("Page four")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () => Get.to(() => PageFive()),
                  child: const Text("Page five")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () => Get.to(() => PageSix()),
                  child: const Text("Page six")),
              const SizedBox(
                height: 20,
              ),
              //كدا انا مستخدم الكونترولر للصفحة السابعة بس
              ElevatedButton(
                  onPressed: () => Get.to(
                        () => PageSeven(),
                        // binding: MyBindings()
                      ),
                  child: const Text("Page seven")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () =>
                      Get.to(() => PageEight(), arguments: "xxxxxxxxxxx"),
                  child: const Text("Page eight")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () =>
                      Get.to(() => PageEight(), arguments: "xxxxxxxxxxx"),
                  child: const Text("Page eight")),

              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    sharedPref.remove('login');
                    Get.offAll(
                      () => const LoginView(),
                    );
                  },
                  child: const Text("Logout")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    sharedPref.remove('welcome');
                    Get.offAll(
                      () => const WelcomeView(),
                    );
                  },
                  child: const Text("Welcome")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(
                      () => const OtherView(),
                    );
                  },
                  child: const Text("other view")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => LanguageView(),
                        binding: LocaleBindings(), arguments: "asd");
                  },
                  child: const Text("language page")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                      title: 'Hello',
                      content: const Text("World"),
                      textCancel: "Cancel",
                      textConfirm: "Confirm",
                      onConfirm: () {},
                    );
                  },
                  child: const Text("Dialog")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar('Hi', 'hello world');
                  },
                  child: const Text("Snackbar")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.bottomSheet(
                        Container(
                          height: 200,
                          padding: const EdgeInsets.all(20),
                          child: const Text("Hello world"),
                        ),
                        backgroundColor: Colors.white);
                  },
                  child: const Text("BottomSheet")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    LocaleController controller = Get.put(LocaleController());
                    controller.changeTheme();
                  },
                  child: const Text("Change theme")),
            ],
          ),
        ),
      ),
    );
  }
}
