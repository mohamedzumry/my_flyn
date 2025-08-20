import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Assignment',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: AppPages.initial,
      unknownRoute: AppPages.unknownRoute,
      getPages: AppPages.routes,
    );
  }
}
