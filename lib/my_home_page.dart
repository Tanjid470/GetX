import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/Second_Page.dart';
import 'package:getx2/controllers/tab_controllers.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final TabControllers _tabController = Get.put(TabControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
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
                _tabController.increment();
              },
              child: Container(
                height: 100,
                width: double.infinity,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber),
                child: const Center(
                    child: Text(
                  'Tap',
                  style: TextStyle(fontSize: 30),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                _tabController.increment();
              },
              child: Container(
                height: 100,
                width: double.infinity,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber),
                child: const Center(
                    child: Text(
                  'Tap',
                  style: TextStyle(fontSize: 30),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(const Second());
              },
              child: Container(
                height: 100,
                width: double.infinity,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber),
                child: const Center(
                    child: Text(
                  'Go to next',
                  style: TextStyle(fontSize: 30),
                )),
              ),
            ),      
          ],
        ),
      ),
    );
  }
}
