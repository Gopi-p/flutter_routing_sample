import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/dashboard.module/dashboard_controller.dart';
import 'package:flutter_routing_sample/shared.module/constants/assets_names.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';
import 'package:flutter_routing_sample/shared.module/widgets/primary_button.dart';
import 'package:get/get.dart';

class Documents extends StatelessWidget {
  Documents({Key? key}) : super(key: key);
  final DashboardController _dashboardController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Documents',
            style: headingText1,
          ),
        ),
        const SizedBox(height: 20),
        PrimaryButton(
          title: "Check upcoming movies",
          iconPath: movieIcon,
          onTap: () {
            context.router.pushNamed('movies/upcoming-movies');
            _dashboardController.activeSideMenuIndex.value = 2;
          },
        ),
      ],
    );
  }
}
