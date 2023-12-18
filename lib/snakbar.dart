import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snakbar extends StatelessWidget {
  const Snakbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.snackbar('my info','md . shohanur rahaman',
              backgroundColor: Colors.blue,
              snackPosition: SnackPosition.BOTTOM,
              mainButton: TextButton(onPressed: (){
                Get.snackbar('my info','md . shohanur');
              }, child: Text('click')
              )


          );

        },child: Icon(Icons.add),),
    );
  }
}
