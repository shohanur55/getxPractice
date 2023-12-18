import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Navigator/Screen2.dart';

class Navigation extends StatelessWidget {

  Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Navigation" + Get.arguments[1]),
          backgroundColor: Colors.cyanAccent,
          centerTitle: true,
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              // Get.to(Screen2());
              Get.toNamed("/screen2");
            },
            child: Text("go to next screen"),
          ),
        ));
  }
}
