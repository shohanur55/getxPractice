import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("screen 2"),
          backgroundColor: Colors.cyanAccent,
          centerTitle: true,
        ),
        body:Center(
          child: TextButton(
            onPressed: (){
          Get.back();
          Get.back();

            },
            child: Text("go to back"),
          ),
        )
    );
  }
}