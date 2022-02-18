import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/my_app.app/app_router/app_router.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';

class FileManager extends StatelessWidget {
  const FileManager({Key? key}) : super(key: key);
  // final DashboardController _dashboardController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: primaryDarkColor, width: 3),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Container(
            height: 40,
            decoration: const BoxDecoration(
              color: primaryDarkColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            ),
            child: Row(
              children: const [
                SizedBox(width: 15),
                Text("File manager"),
                Spacer(),
                Icon(Icons.more_vert, size: 20),
                SizedBox(width: 15),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 230,
                  color: cardColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 60),
                      FileManagerTile(
                        title: "Pictures",
                        onTap: () {
                          context.router.push(const PicturesRoute());
                        },
                      ),
                      FileManagerTile(
                        title: "Documents",
                        onTap: () {
                          print(ModalRoute.of(context)!.settings.name);
                          context.router.push(const DocumentsRoute());
                        },
                      ),
                    ],
                  ),
                ),
                const Expanded(child: AutoRouter()),
              ],
            ),
          )
        ],
      ),
    );

    // Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
    //     Center(
    //       child: Text(
    //         'File Manager',
    //         style: headingText1,
    //       ),
    //     ),
    //     const SizedBox(height: 20),
    //     Wrap(
    //       alignment: WrapAlignment.center,
    //       crossAxisAlignment: WrapCrossAlignment.center,
    //       runAlignment: WrapAlignment.center,
    //       spacing: 20,
    //       runSpacing: 20,
    //       children: [
    //         PrimaryButton(
    //           title: "Listen Melody Songs",
    //           iconPath: musicIcon,
    //           onTap: () {
    //             context.router.push(const MelodySongsRoute());
    //             _dashboardController.activeSideMenuIndex.value = 1;
    //           },
    //         ),
    //         PrimaryButton(
    //           title: "Check Upcoming Movies",
    //           iconPath: movieIcon,
    //           onTap: () {
    //             context.router.pushNamed('movies/upcoming-movies');
    //             _dashboardController.activeSideMenuIndex.value = 2;
    //           },
    //         ),
    //       ],
    //     ),
    //   ],
    // );
  }
}

class FileManagerTile extends StatelessWidget {
  const FileManagerTile({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: transparent,
      child: InkWell(
        splashColor: secondaryLightColor.withOpacity(0.7),
        hoverColor: tertiaryLightColor.withOpacity(0.2),
        radius: 0,
        onTap: () => onTap(),
        child: SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 10,
              bottom: 10,
            ),
            child: Text(title, style: buttonText),
          ),
        ),
      ),
    );
  }
}
