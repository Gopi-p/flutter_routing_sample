import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/my_app.module/app_router/app_router.dart';
import 'package:flutter_routing_sample/profile/profile_controller.dart';
import 'package:flutter_routing_sample/shared.module/constants/assets_names.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  final ProfileController _profileController = Get.find();
  @override
  Widget build(BuildContext context) {
    print("PROFILE BUILD");
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 6,
            color: primaryDarkColor,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(50),
          itemCount: _profileController.usersList.length,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              title: Text(_profileController.usersList[index].name),
              subtitle: Text(_profileController.usersList[index].designation),
              leading: SvgPicture.asset(
                userIcon,
                color: tertiaryDarkColor,
              ),
              onTap: () {
                context.router.push(ProfileDetailsRoute(
                    userId: _profileController.usersList[index].userId));
              },
            );
          },
        ),
      ),
    );
  }
}
