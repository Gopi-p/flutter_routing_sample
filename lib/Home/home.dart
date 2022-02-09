import 'package:auto_route_example/my_app/my_app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final MyAppController myAppController = Get.find();
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1), () {
      myAppController.navBarTitle.value = "Home";
    });
    return const Scaffold(
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}
