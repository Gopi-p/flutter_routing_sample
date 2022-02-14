import 'package:auto_route/auto_route.dart';
import 'package:flutter_routing_sample/my_app.module/app_router/app_router.dart';
import 'package:flutter_routing_sample/my_app.module/my_app_controller.dart';
import 'package:get/get.dart';

class AuthGuard extends AutoRouteGuard {
  final InitController _initController = Get.put(InitController());
  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    if (_initController.isUserLoggedIn.value) {
      resolver.next(true);
    } else {
      router.push(
        LoginRoute(
          onLogin: (success) {
            resolver.next(success);
          },
        ),
      );
    }
  }
}

class LoginRouteGuard extends AutoRouteGuard {
  final InitController _initController = Get.put(InitController());
  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    if (_initController.isUserLoggedIn.value) {
      print("Login not is allowed");
      resolver.next(false);
      router.navigateBack();
    } else {
      print("Login is allowed");
      resolver.next(true);
    }
  }
}
