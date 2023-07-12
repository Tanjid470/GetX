import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Pages/Getx_Routing.dart';
import 'package:getx/Pages/HomeScreen.dart';
import 'package:getx/views/Shopping_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductScreen(), 
      getPages: [
         GetPage(name: '/', page: () => const HomePagState(),),
          GetPage(name: '/GetXNavigator', page: () => GetXNavigator(),),
      ],
    );
  }
}

