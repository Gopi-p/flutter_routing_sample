import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';

class UnknownRoute extends StatelessWidget {
  const UnknownRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "404 Not Found",
          style: headingText1,
        ),
      ),
    );
  }
}
