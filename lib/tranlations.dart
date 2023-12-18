import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Translation extends StatelessWidget {
  const Translation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
mainAxisAlignment: MainAxisAlignment.center,
                children: [
          ListTile(
            title: Text("message".tr),
            subtitle: Text("answer".tr),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Get.updateLocale(Locale("en","UK"));
                },
                child: Text("english"),
              ),
              TextButton(
                onPressed: () {
                  Get.updateLocale(Locale("bn","BD"));
                },
                child: Text("bengali"),
              ),
            ],
          )
                ],
              ),
        ));
  }
}
