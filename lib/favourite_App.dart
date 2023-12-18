import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllerGetx.dart';

class FavouriteApp extends StatelessWidget {
  FavouriteApp({super.key});

  Favouritess controller = Get.put(Favouritess());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: controller.fruitlist.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(controller.fruitlist[index]),
              trailing: Obx(
                () => Icon(
                  Icons.favorite,
                  color:controller.favouriteList.contains(controller.fruitlist[index].toString())
                      ? Colors.red
                      : Colors.white,
                ),
              ),
              onTap: () {
                if (controller.favouriteList.contains(controller.fruitlist[index].toString())) {
                  controller.removeitem(controller.fruitlist[index].toString());
                } else {
                  controller.additem(controller.fruitlist[index].toString());
                }

              },
            );
          },
        ),
      ),
    );
  }
}
