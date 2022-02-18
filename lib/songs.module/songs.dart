import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/my_app.app/app_router/app_router.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';

class Songs extends StatelessWidget {
  const Songs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 16,
      runSpacing: 16,
      children: const [
        ButtonCard(title: "Rock Songs", route: RockSongsRoute()),
        ButtonCard(title: "Melody Songs", route: MelodySongsRoute()),
        ButtonCard(title: "Hiphop Songs", route: HiphopSongsRoute()),
      ],
    );
  }
}

class ButtonCard extends StatelessWidget {
  const ButtonCard({
    Key? key,
    required this.title,
    required this.route,
  }) : super(key: key);
  final String title;
  final dynamic route;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: transparent,
        child: InkWell(
          radius: 0,
          hoverColor: primaryDarkColor,
          splashColor: secondaryLightColor,
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            context.router.push(route);
          },
          child: SizedBox(
            height: 150,
            width: 300,
            child: Center(child: Text(title, style: headingText1)),
          ),
        ),
      ),
    );
  }
}
