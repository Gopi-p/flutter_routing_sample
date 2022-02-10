import 'package:flutter_routing_sample/shared.module/models/profile.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  List<UserDetail> usersList = [
    UserDetail(name: "Gopinath", designation: "Developer"),
    UserDetail(name: "Guru", designation: "Designer"),
    UserDetail(name: "Kavin", designation: "Product Mannager"),
    UserDetail(name: "Barath", designation: "Architect"),
  ];
}
