import 'package:flutter/material.dart';
import 'package:flutter_localization/home_page.dart';
import 'package:flutter_localization/languages.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      translations: Languages(),
      fallbackLocale: const Locale('en', 'us'),
      locale: const Locale('ur', 'PK'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
