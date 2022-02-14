import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/dashboard/dashboard_controller.dart';
import 'package:flutter_routing_sample/my_app.module/app_router/app_router.dart';
import 'package:flutter_routing_sample/shared.module/constants/assets_names.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';
import 'package:flutter_routing_sample/shared.module/widgets/primary_button.dart';
import 'package:get/get.dart';

class Pictures extends StatelessWidget {
  Pictures({Key? key}) : super(key: key);
  final DashboardController _dashboardController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Pictures',
            style: headingText1,
          ),
        ),
        const SizedBox(height: 20),
        PrimaryButton(
          title: "Go Home",
          iconPath: homeIcon,
          onTap: () {
            context.router.navigate(const HomeRoute());
            _dashboardController.activeSideMenuIndex.value = 0;
          },
        ),
      ],
    );
  }
}
