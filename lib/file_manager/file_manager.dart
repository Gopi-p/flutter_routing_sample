import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/dashboard/dashboard_controller.dart';
import 'package:flutter_routing_sample/my_app.module/app_router/app_router.dart';
import 'package:flutter_routing_sample/shared.module/constants/assets_names.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';
import 'package:flutter_routing_sample/shared.module/widgets/primary_button.dart';
import 'package:get/get.dart';

class FileManager extends StatelessWidget {
  FileManager({Key? key}) : super(key: key);
  final DashboardController _dashboardController = Get.find();
  @override
  Widget build(BuildContext context) {
    print("FILE MANAGER BUILD { parent }");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'File Manager',
            style: headingText1,
          ),
        ),
        const SizedBox(height: 20),
        PrimaryButton(
          title: "Check Melody Songs",
          iconPath: musicIcon,
          onTap: () {
            context.router.push(const MelodySongsRoute());
            _dashboardController.activeSideMenuIndex.value = 1;
          },
        ),
      ],
    );
  }
}
// AutoRouter.of(context).pushNamed("/songs/sad-songs");