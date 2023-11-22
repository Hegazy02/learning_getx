import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/page_one_view.dart';
import 'package:getx/view/page_three_view.dart';
import 'package:getx/view/page_two_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
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
          ],
        ),
      ),
    );
  }
}
