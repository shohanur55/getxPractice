

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/controllerGetx.dart';

class ImagePickers extends StatelessWidget {
  ImagePickers({super.key});

  PickerImage controller = Get.put(PickerImage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Obx(() =>  CircleAvatar(
              radius: 60,
              backgroundImage: controller.pathimage.isNotEmpty
                  ? FileImage(File(controller.pathimage.toString()))
                  : null,
    )),TextButton(onPressed: (){
              controller.getImage();
            }, child: Text("pick image")),
          ],
        ),
      ),
    );
  }
}
