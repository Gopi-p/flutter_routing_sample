import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';

class CusIconButton extends StatelessWidget {
  const CusIconButton({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: transparent,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        radius: 0,
        borderRadius: BorderRadius.circular(8),
        onTap: () => onTap(),
        child: SizedBox(
          height: 50,
          width: 50,
          child: Icon(icon),
        ),
      ),
    );
  }
}
