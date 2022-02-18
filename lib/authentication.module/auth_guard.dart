import 'package:auto_route/auto_route.dart';
import 'package:flutter_routing_sample/my_app.app/app_router/app_router.dart';
import 'package:flutter_routing_sample/my_app.app/my_app_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthGuard extends AutoRouteGuard {
  final localBox = GetStorage();
  final InitController _initController = Get.put(InitController());
  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    if (checkLocalStorage()) {
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

  bool checkLocalStorage() {
    if (_initController.isUserLoggedIn.value) {
      return true;
    } else {
      if (localBox.hasData('rememberMe')) {
        _initController.isUserLoggedIn.value = true;
        return true;
      }
      return false;
    }
  }
}

class LoginRouteGuard extends AutoRouteGuard {
  final InitController _initController = Get.put(InitController());
  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    if (_initController.isUserLoggedIn.value) {
      resolver.next(false);
      router.navigateBack();
    } else {
      resolver.next(true);
    }
  }
}
