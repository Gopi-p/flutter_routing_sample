import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/my_app.app/app_router/app_router.dart';
import 'package:flutter_routing_sample/my_app.app/my_app_controller.dart';
import 'package:flutter_routing_sample/shared.module/constants/assets_names.dart';
import 'package:flutter_routing_sample/shared.module/schemas/dashboard.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DashboardController extends GetxController {
  final InitController _initController = Get.find();

  final RxInt activeSideMenuIndex = 0.obs;
  final RxString dashboardTitle = "Home".obs;
  final List sideMenuItemsList = [
    SideMenuItem(title: "Home", iconPath: homeIcon),
    SideMenuItem(title: "Songs", iconPath: musicIcon),
    SideMenuItem(title: "Movies", iconPath: movieIcon),
    SideMenuItem(title: "Games", iconPath: gamesIcon),
    SideMenuItem(title: "File Manager", iconPath: folderIcon),
    SideMenuItem(title: "Profile", iconPath: userIcon),
  ];

  onClickLogout({required BuildContext context}) async {
    final localBox = GetStorage();
    _initController.isUserLoggedIn.value = false;
    await localBox.remove("rememberMe");
    context.router.replaceAll([LoginRoute()]);
  }

  changeActiveSideMenuButton({required String currentRoutePath}) {
    switch (currentRoutePath) {
      case 'home':
        activeSideMenuIndex.value = 0;
        break;
      case 'songs':
        activeSideMenuIndex.value = 1;
        break;
      case 'movies':
        activeSideMenuIndex.value = 2;
        break;
      case 'games':
        activeSideMenuIndex.value = 3;
        break;
      case 'file-manager':
        activeSideMenuIndex.value = 4;
        break;
      case 'profile':
        activeSideMenuIndex.value = 5;
        break;
      default:
        break;
    }
  }
}
