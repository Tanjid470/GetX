import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Pages/HomeScreen.dart';

class GetXNavigator extends StatefulWidget {
  
  var name;
  GetXNavigator({Key ? key ,this.name}):super(key : key);

  @override
  State<GetXNavigator> createState() => _GetXNavigatorState();
}

class _GetXNavigatorState extends State<GetXNavigator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX_Navigation' +Get.arguments[0]),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              //Get.back();
            },
            child: const Text('Go Back')),
      ),
    );
  }
}
