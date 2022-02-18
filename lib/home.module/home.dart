import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Home",
        style: headingText1,
      ),
    );
  }
}
