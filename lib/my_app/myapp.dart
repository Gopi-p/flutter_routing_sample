import 'package:auto_route_example/my_app/app_router/app_router.dart';
import 'package:auto_route_example/my_app/myapp_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    Get.put(MyAppController());
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
