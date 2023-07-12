import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/controllers/tab_controllers.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  final TabControllers _tabControllers = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
             // ignore: non_constant_identifier_names
             GetBuilder<TabControllers>(builder: (ViewController) {
                return Container(
                  height: 100,
                  width: double.infinity,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey),
                      child: Center(
                      child: Text(
                      ViewController.x.toString(),
                      style: const TextStyle(fontSize: 30),
                  )),
                );
              }),
            GestureDetector(
              onTap: () {
                _tabControllers.less();
              },
            child: Container(
              height: 100,
              width: double.infinity,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.amber),
              child: const Center(
                  child: Text(
                   'Tap',
                style: TextStyle(fontSize: 30),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
