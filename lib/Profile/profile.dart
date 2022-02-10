import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/profile/profile_controller.dart';
import 'package:flutter_routing_sample/shared.module/constants/assets_names.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  ProfileController _profileController = Get.find();
  @override
  Widget build(BuildContext context) {
    print("PROFILE BUILD");
    return ListView.builder(
      itemCount: _profileController.usersList.length,
      itemBuilder: (BuildContext context, index) {
        return ListTile(
          title: Text(_profileController.usersList[index].name),
          subtitle: Text(_profileController.usersList[index].designation),
          leading: SvgPicture.asset(
            userIcon,
            color: tertiaryDarkColor,
          ),
          hoverColor: secondaryLightColor,
        );
      },
    );
  }
}
