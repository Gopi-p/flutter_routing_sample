import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/my_app.module/app_router/app_router.dart';
import 'package:flutter_routing_sample/my_app.module/my_app_controller.dart';
import 'package:flutter_routing_sample/shared.module/constants/assets_names.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';
import 'package:flutter_routing_sample/shared.module/widgets/primary_button.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  Login({Key? key, this.onLogin}) : super(key: key);
  final InitController _initController = Get.find();
  final Function(bool)? onLogin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity),
          Text("Login", style: headingText1),
          const SizedBox(height: 20),
          PrimaryButton(
            title: "Login",
            iconPath: rightCircledArrowIcon,
            onTap: () {
              _initController.isUserLoggedIn.value = true;
              if (onLogin != null) {
                print("Proper Login");
                onLogin!(true);
                context.router.removeLast();
              } else {
                print("Improper Login");
                context.router.navigate(const DashboardRoute());
              }
            },
          )
        ],
      ),
    );
  }
}
