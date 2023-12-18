import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Navigator/Navigation.dart';
import 'package:getx_practice/counter.dart';
import 'package:getx_practice/favourite_App.dart';
import 'package:getx_practice/imagePicker.dart';
import 'package:getx_practice/languages.dart';
import 'package:getx_practice/sliderOpasity.dart';
import 'package:getx_practice/snakbar.dart';
import 'package:getx_practice/switch.dart';
import 'package:getx_practice/tranlations.dart';

import 'ShowDialogAndBottomSheet.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.to(Snakbar());
                  },
                  child: Text('snakbar')),
            const  SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
               Get.to(showDialogAndbottomSheet());
                },
                child: Text('show dialog and bottomSheet'),
              ),
              ElevatedButton(
                onPressed: () {
             //  Get.to(Navigation(name: " getx",));
                  Get.toNamed("/navigator",arguments: [
                    " getx",
                    " 1st",
                  ]);
                },
                child: Text('Navigation'),
              ),  ElevatedButton(
                onPressed: () {
             //  Get.to(Navigation(name: " getx",));
                Get.to(Translation());
                },
                child: Text('Translators'),
              ),ElevatedButton(
                onPressed: () {
                Get.to(CounterApp());
                },
                child: Text('counter app'),
              ),ElevatedButton(
                onPressed: () {
                Get.to(SliderOpasity());
                },
                child: Text('slider Opasity'),
              ),ElevatedButton(
                onPressed: () {
                Get.to(Switchs());
                },
                child: Text('Swiths value'),
              ),ElevatedButton(
                onPressed: () {
                Get.to(FavouriteApp());
                },
                child: Text('Favourite App'),
              ),
              ElevatedButton(
                onPressed: () {
                Get.to(ImagePickers());
                },
                child: Text('Image picker'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
