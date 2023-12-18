import 'package:flutter/material.dart';
import 'package:get/get.dart';

class showDialogAndbottomSheet extends StatelessWidget {
  const showDialogAndbottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Card(
              child: ListView(
                children: [

                  ListTile(
                    title: Text('name'),
                    subtitle: Text('Md. Shohanur rahaman'),
                    onTap: (){
                      Get.defaultDialog(
                        title: 'dialog box',
                        middleText: 'this is the middle text',
                      );
                    },
                  ),
                  ListTile(
                    title: Text('bottom sheet'),
                    subtitle: Text('please click here'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
