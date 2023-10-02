import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Localization With Getx'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('en', 'US'));
                  },
                  child: const Text('English ')),
              const SizedBox(
                width: 20,
              ),
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('ur', 'PK'));
                  },
                  child: const Text('Urdu ')),
            ],
          )
        ],
      ),
    );
  }
}
