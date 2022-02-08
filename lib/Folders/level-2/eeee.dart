import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/Folders/folders_controller.dart';
import 'package:auto_route_example/Router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_ui/mini_ui.dart';

class EEEE extends StatelessWidget {
  EEEE({Key? key}) : super(key: key);
  final FoldersController foldersController = Get.find();
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1), () {
      foldersController.breadCrumbString.value = "/two/eeee";
    });
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const MiniText.heading2("EEEE"),
          const SizedBox(height: 20),
          SizedBox(
            width: 200,
            child: MiniButton.outline(
              title: "Listen Sad Songs",
              onTap: () {
                AutoRouter.of(context).pushNamed("/songs/sad-songs");
              },
            ),
          )
        ],
      ),
    );
  }
}
