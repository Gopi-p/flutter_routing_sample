import 'package:flutter_routing_sample/shared.module/constants/assets_names.dart';
import 'package:flutter_routing_sample/shared.module/schemas/dashboard.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
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
  changeActiveSideMenuIndex(int index) {
    activeSideMenuIndex.value = index;
  }
}
