import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/authentication/auth_guard.dart';
import 'package:flutter_routing_sample/my_app.module/app_router/app_router.dart';
import 'package:flutter_routing_sample/my_app.module/my_app_bindings.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter =
      AppRouter(authGuard: AuthGuard(), loginRouteGuard: LoginRouteGuard());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Routing Sample",
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: primaryFontFamily,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      color: Colors.purple,
      initialBinding: MyAppBinding(),
    );
  }
}
