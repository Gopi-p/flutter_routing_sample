import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/my_app.module/app_router/app_router.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_routing_sample/dashboard/dashboard_controller.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';
import 'package:flutter_routing_sample/shared.module/functions/theme.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("DASHBOARD BUILD { parent }");
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Row(
        children: [
          SideMenu(),
          Expanded(
            child: Column(
              children: [
                TopBar(),
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.only(top: 18, right: 18, bottom: 18),
                    decoration: BoxDecoration(
                      color: secondaryDarkColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const AutoRouter(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SideMenu extends StatelessWidget {
  SideMenu({Key? key}) : super(key: key);
  final DashboardController _dashboardController = Get.find();
  @override
  Widget build(BuildContext context) {
    print("DASHBOARD BUILD { sidemenu }");
    return Padding(
      padding: paddingAll(18),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: secondaryDarkColor,
        ),
        child: Padding(
          padding: paddingAll(12),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SideMenuHeader(),
              const Divider(height: 0),
              const SizedBox(height: 30),
              Expanded(
                child: ListView.builder(
                  itemCount: _dashboardController.sideMenuItemsList.length,
                  itemBuilder: (BuildContext context, index) {
                    return SideMenuButton(
                      title:
                          _dashboardController.sideMenuItemsList[index].title,
                      index: index,
                      iconPath: _dashboardController
                          .sideMenuItemsList[index].iconPath,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  TopBar({Key? key}) : super(key: key);
  final DashboardController _dashboardController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, right: 18),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: secondaryDarkColor,
        ),
        child: Center(
          child: Obx(
            () => Text(
              _dashboardController.dashboardTitle.value,
              style: titleText,
            ),
          ),
        ),
      ),
    );
  }
}

class SideMenuHeader extends StatelessWidget {
  const SideMenuHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Text("DASHBOARD", style: headingText2),
    );
  }
}

class SideMenuButton extends StatelessWidget {
  final DashboardController _dashboardController = Get.find();
  SideMenuButton({
    Key? key,
    required this.title,
    required this.index,
    required this.iconPath,
  }) : super(key: key);

  final String title;
  final int index;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    var router = context.router;
    void changePageRoute(i) {
      switch (i) {
        case 0:
          router.push(const HomeRoute());
          break;
        case 1:
          router.push(const SongsRoute());
          break;
        case 2:
          router.push(const MoviesRoute());
          break;
        case 3:
          router.push(const GamesRoute());
          break;
        case 4:
          router.push(const FileManagerRoute());
          break;
        case 5:
          router.push(const ProfileRoute());
          break;
        default:
      }
    }

    return Obx(
      () => Container(
        margin: const EdgeInsets.only(bottom: 6),
        decoration: BoxDecoration(
          color: _dashboardController.activeSideMenuIndex.value == index
              ? secondaryLightColor
              : transparent,
          borderRadius: buttonBorderRadius,
          boxShadow: [boxShadow(boxShadowColor: backgroundColor)],
        ),
        child: Material(
          borderRadius: buttonBorderRadius,
          color: transparent,
          child: InkWell(
            borderRadius: buttonBorderRadius,
            splashColor: secondaryLightColor.withOpacity(0.7),
            hoverColor: secondaryLightColor.withOpacity(0.5),
            radius: 0,
            onTap: () {
              _dashboardController.activeSideMenuIndex.value = index;
              _dashboardController.dashboardTitle.value = title;
              changePageRoute(index);
            },
            child: SizedBox(
              height: 50,
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: _dashboardController.activeSideMenuIndex.value ==
                              index
                          ? primaryDarkColor
                          : secondaryLightColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: SizedBox(
                        width: 18,
                        child: SvgPicture.asset(
                          iconPath,
                          color:
                              _dashboardController.activeSideMenuIndex.value ==
                                      index
                                  ? Colors.white
                                  : primaryDarkColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    title,
                    style: buttonText,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
