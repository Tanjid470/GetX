import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Pages/Getx_Routing.dart';

class HomePagState extends StatefulWidget {
  const HomePagState({super.key});

  @override
  State<HomePagState> createState() => HomePagStateState();
}

class HomePagStateState extends State<HomePagState> {
  var height=Get.height;
  var width=Get.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Card(
          child: ListTile(
            title: const Text('GetX Alert Dialog'),
            subtitle: const Text('Click on this ListTile to see Alert Dialog'),
            onTap: () {
              Get.defaultDialog(
                  title: 'Delete',
                  middleText:
                      'Are you sure to delete it. Otherwise you can cancel it.',
                  titlePadding: const EdgeInsets.only(top: 10),
                  contentPadding: const EdgeInsets.all(20),
                  textCancel: 'Cancel',
                  confirm: ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text('Delete')));
            },
          ),
        ),
        Card(
          child: ListTile(
            title: const Text('GetX Buttom Sheet'),
            subtitle: const Text('Click on this ListTile to see Buttom Sheet'),
            onTap: () {
              Get.bottomSheet(Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Dark Theme'),
                      leading: Icon(Icons.dark_mode),
                      onTap: () {
                        Get.changeTheme(ThemeData.dark());
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.light_mode),
                      title: Text('Light Theme'),
                      onTap: () {
                        Get.changeTheme(ThemeData.light());
                      },
                    )
                  ],
                ),
              ));
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Height :'+height.toString()+'\nWidth :'+width.toString()),
            subtitle: Text('Get Display Height and Width by GetX'),
          ),),
        TextButton(
            onPressed: () {
              //Get.to(const GetXNavigator());
              Get.toNamed('/GetXNavigator',arguments: ['Tanjid','Jawad']);
            },
            child: const Text('Go to Next')),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("Tanjid Emran", "I will call you later",
              snackPosition: SnackPosition.TOP);
        },
        child: const Text('Tap'),
      ),
    );
  }
}
