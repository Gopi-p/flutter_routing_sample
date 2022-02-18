import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/my_app.app/app_router/app_router.dart';
import 'package:flutter_routing_sample/my_app.app/my_app_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final InitController _initController = Get.find();
  RxBool isRememberMe = false.obs;
  RxBool isDarkMode = false.obs;

  void onClickLogin({required BuildContext context}) {
    if (isRememberMe.value) {
      storeUserDetailsLocally();
    }
    _initController.isUserLoggedIn.value = true;
    context.router.navigate(const DashboardRoute());
  }

  void onAuthGuardLogin({
    required BuildContext context,
    required Function(bool)? loginRouteFunction,
  }) {
    if (isRememberMe.value) {
      storeUserDetailsLocally();
    }
    _initController.isUserLoggedIn.value = true;
    loginRouteFunction!(true);
    context.router.removeLast();
  }

  void storeUserDetailsLocally() async {
    final localBox = GetStorage();
    await localBox.write('rememberMe', 'true');
  }

  @override
  void onClose() {
    Get.delete<LoginController>();
    super.onClose();
  }
}
