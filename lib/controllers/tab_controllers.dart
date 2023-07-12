import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabControllers extends GetxController{
  int _x=0;
  int get x=>_x;

  void increment(){
    _x++;
    update();
    print(_x);
  }
  void less(){
    _x--;
    update();
  }
}