import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllerGetx.dart';

class SliderOpasity extends StatelessWidget {
  SliderOpasity({super.key});


  ChangeOpacity sliderController=Get.put(ChangeOpacity());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
         Obx((){
           return Container(
             height: 200,
             width: 200,
             color: Colors.blue.withOpacity(sliderController.opacity.value),
           );
         }),
       Obx(() => Slider(value: sliderController.opacity.value, onChanged: (value){
         sliderController.changeOpacity(value);

       }) )
        ],
      ),

    );
  }
}
