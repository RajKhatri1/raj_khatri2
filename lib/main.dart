import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raj_khatri2/view/HomePage.dart';

void main() {

  runApp(GetMaterialApp(debugShowCheckedModeBanner: false,getPages: [GetPage(name: "/",page: () => Homescreen() ,)  ],));
}

