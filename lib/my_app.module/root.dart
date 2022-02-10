import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/Dashboard/dashboard.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Dashboard(),
    );
  }
}
