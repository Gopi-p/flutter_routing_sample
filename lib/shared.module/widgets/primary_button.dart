import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';
import 'package:flutter_routing_sample/shared.module/functions/theme.dart';
import 'package:flutter_svg/svg.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.title,
    required this.iconPath,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final String iconPath;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryLightColor,
        borderRadius: buttonBorderRadius,
        boxShadow: [boxShadow(boxShadowColor: backgroundColor)],
      ),
      child: Material(
        borderRadius: buttonBorderRadius,
        color: transparent,
        child: InkWell(
          borderRadius: buttonBorderRadius,
          splashColor: secondaryLightColor.withOpacity(0.7),
          hoverColor: tertiaryLightColor.withOpacity(0.2),
          radius: 0,
          onTap: () => onTap(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  iconPath,
                  color: tertiaryDarkColor,
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 7),
                Text(
                  title,
                  style: buttonText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
