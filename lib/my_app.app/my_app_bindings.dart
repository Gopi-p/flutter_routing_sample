import 'package:flutter_routing_sample/authentication.module/login_controller.dart';
import 'package:flutter_routing_sample/dashboard.module/dashboard_controller.dart';
import 'package:flutter_routing_sample/games.module/games_controller.dart';
import 'package:flutter_routing_sample/my_app.app/my_app_controller.dart';
import 'package:flutter_routing_sample/profile.module/profile_controller.dart';
import 'package:get/get.dart';

class MyAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InitController>(() => InitController());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<GamesController>(() => GamesController());
  }
}
