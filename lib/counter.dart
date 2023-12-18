import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controllerGetx.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {

    Counter _counter=Get.put(Counter());

    return Scaffold(
      body: Center(
        child:Obx(()=>Text(_counter.count.toString()),)
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
_counter.increment();
        },
      ),
    );
  }
}
