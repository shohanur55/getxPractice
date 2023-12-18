import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_practice/Navigator/Navigation.dart';
import 'package:getx_practice/Navigator/Screen2.dart';
import 'package:getx_practice/home_screen.dart';
import 'package:getx_practice/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     debugShowCheckedModeBanner: false,

      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: homeScreen(),
      getPages: [
        GetPage(
          name: "/", page:() => homeScreen(),

    ),
        GetPage(name: "/navigator", page:() => Navigation()),
        GetPage(name: "/screen2", page:() => Screen2()),



      ],
      fallbackLocale: Locale("en","uk"),
      locale:Locale("bn","BD"),
      translations: Translators(),
    );
  }
}



