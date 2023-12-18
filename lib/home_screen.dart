import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/snakbar.dart';

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
            ],
          ),
        ),
      ),
    );
  }
}
