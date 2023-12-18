import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/controllerGetx.dart';

class Switchs extends StatelessWidget {
  Switchs({super.key});

  SwitchValue controller = Get.put(SwitchValue());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("NOtification"),

           Obx(() =>Switch(
                value: controller.values.value,
                onChanged: (value) {
                  controller.values.value = value;
                 controller.ChangeValue(value);
                }), )
    ],
        ),
      ),
    );
  }
}
