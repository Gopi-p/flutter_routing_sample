import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/shared.module/widgets/icon_button.dart';
import 'package:get/get.dart';

class RockSongs extends StatelessWidget {
  const RockSongs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("ROCKS SONGS BUILD");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: CusIconButton(
            icon: Icons.arrow_back,
            onTap: () {
              context.router.pop();
            },
          ),
        ),
        const Spacer(),
        Center(
          child: Text(
            'Rock Songs',
            style: TextStyle(
              fontSize: context.width * 0.05,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
