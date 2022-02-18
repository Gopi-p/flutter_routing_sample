import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/games.module/games_controller.dart';
import 'package:flutter_routing_sample/shared.module/constants/assets_names.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';
import 'package:flutter_routing_sample/shared.module/widgets/primary_button.dart';
import 'package:get/get.dart';

class Games extends StatelessWidget {
  Games({Key? key}) : super(key: key);
  // final DashboardController _dashboardController = Get.find();
  final GamesController _gamesController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'No Games Try GetX',
            style: headingText1,
          ),
        ),
        const SizedBox(height: 20),
        Wrap(
          children: [
            PrimaryButton(
              title: "Theme change",
              iconPath: movieIcon,
              onTap: () {
                // _gamesController.showSnackBar();
                Get.snackbar("title", "message");
              },
            )
          ],
        )
      ],
    );
  }
}
