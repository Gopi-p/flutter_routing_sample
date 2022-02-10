import 'package:flutter_routing_sample/dashboard/dashboard_controller.dart';
import 'package:flutter_routing_sample/my_app.module/my_app_controller.dart';
import 'package:flutter_routing_sample/profile/profile_controller.dart';
import 'package:get/get.dart';

class MyAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(InitController());
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
