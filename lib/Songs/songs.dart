import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/my_app/app_router/app_router.dart';
import 'package:auto_route_example/my_app/myapp_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_ui/mini_ui.dart';

class Songs extends StatelessWidget {
  Songs({Key? key}) : super(key: key);
  final MyAppController myAppController = Get.find();
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1), () {
      myAppController.navBarTitle.value = "Songs";
    });
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          vlSpaceXL,
          const Text(
            "SONGS",
            style: TextStyle(
              color: Colors.purple,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          vlSpaceM,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  AutoRouter.of(context).push(const MelodySongsRoute());
                },
                child: const Text("Melody Songs"),
              ),
              hlSpaceXL,
              TextButton(
                onPressed: () {
                  AutoRouter.of(context).push(const FolkSongsRoute());
                },
                child: const Text("Folk Songs"),
              ),
              hlSpaceXL,
              TextButton(
                onPressed: () {
                  AutoRouter.of(context).push(const SadSongsRoute());
                },
                child: const Text("Sad Songs"),
              ),
            ],
          ),
          const Expanded(child: AutoRouter())
        ],
      ),
    );
  }
}
