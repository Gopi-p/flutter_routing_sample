import 'package:auto_route_example/my_app/my_app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_ui/mini_ui.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  final MyAppController myAppController = Get.find();
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1), () {
      myAppController.navBarTitle.value = "Profile";
    });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text("Profile"),
          ),
          vlSpaceM,
          SizedBox(
            width: 250,
            child: MiniButton(
              title: "Go Home",
              onTap: () {
                // AutoRouter.of(context).popUntil((route) => );
              },
            ),
          )
        ],
      ),
    );
  }
}
