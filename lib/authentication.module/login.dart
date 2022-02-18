import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/authentication.module/login_controller.dart';
import 'package:flutter_routing_sample/shared.module/constants/assets_names.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';
import 'package:flutter_routing_sample/shared.module/widgets/primary_button.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  Login({Key? key, this.onLogin}) : super(key: key);

  final LoginController _loginController = Get.find();
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
              if (onLogin != null) {
                _loginController.onAuthGuardLogin(
                  context: context,
                  loginRouteFunction: onLogin,
                );
              } else {
                _loginController.onClickLogin(context: context);
              }
            },
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(
                () => Checkbox(
                  value: _loginController.isRememberMe.value,
                  onChanged: (value) {
                    _loginController.isRememberMe.value = value!;
                  },
                ),
              ),
              const Text("Remember me"),
            ],
          )
        ],
      ),
    );
  }
}
