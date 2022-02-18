import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/profile.module/profile_controller.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';
import 'package:get/get.dart';

class ProfileDetails extends StatelessWidget {
  ProfileDetails({Key? key, @PathParam('userId') required this.userId})
      : super(key: key);
  final ProfileController _profileController = Get.find();
  final String userId;
  @override
  Widget build(BuildContext context) {
    final index = _profileController.usersList
        .indexWhere((element) => element.userId == userId);
    return index != -1
        ? Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 6,
                  color: primaryDarkColor,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    _profileController.usersList[index].name,
                    style: headingText1.copyWith(fontSize: 35),
                  ),
                  DetailsTile(title: "ID", value: userId),
                  DetailsTile(
                      title: "Name",
                      value: _profileController.usersList[index].name),
                  DetailsTile(
                      title: "Designation",
                      value: _profileController.usersList[index].designation),
                ],
              ),
            ),
          )
        : const Center(
            child: Text("User not found"),
          );
  }
}

class DetailsTile extends StatelessWidget {
  const DetailsTile({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title, style: titleText),
          const SizedBox(width: 20),
          Text(value, style: titleText),
        ],
      ),
    );
  }
}
