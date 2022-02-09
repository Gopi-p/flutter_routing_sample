import 'package:auto_route_example/Folders/folders_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_ui/mini_ui.dart';

class Four4 extends StatelessWidget {
  Four4({Key? key}) : super(key: key);
  final FoldersController foldersController = Get.find();
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1), () {
      foldersController.breadCrumbString.value = "/four";
    });
    return const Center(
      child: MiniText.heading2("Four"),
    );
  }
}
