import 'package:flutter/material.dart';
import 'package:get/get.dart';

class showDialogAndbottomSheet extends StatelessWidget {
  const showDialogAndbottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("showDialogAndbottomSheet"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: Card(
              child: ListView(
                children: [

                  ListTile(
                   tileColor: Colors.cyanAccent,
                    splashColor: Colors.blue,
                    title: Text('name'),
                    subtitle: Text('Md. Shohanur rahaman'),
                    onTap: (){
                      Get.defaultDialog(
                        title: 'dialog box',
                        middleText: 'this is the middle text',
                      );
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    tileColor: Colors.cyanAccent,
                    title: Text('bottom sheet'),
                    subtitle: Text('please click here'),
                    onTap: (){
                     Get.bottomSheet(
                        Container(
                          color:Colors.blue,
                          child: ListView(
                            children: [
                              Card(
                                child: ListTile(

                                  title:Text("Light Theme"),
                                  tileColor: Colors.cyanAccent,
                                  onTap: (){Get.changeTheme(ThemeData.light());
                                  },
                                ),
                              ),

                              Card(
                                child: ListTile(
                                
                                  title:Text("dark Theme",style: TextStyle(color: Colors.blue),),
                                  tileColor: Colors.black54,
                                  onTap: (){
                                    Get.changeTheme(ThemeData.dark());
                                  },
                                ),
                              ),
                            ],
                          )
                        )
                     );
                    },
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
