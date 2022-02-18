import 'package:flutter_routing_sample/shared.module/schemas/profile.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  List<UserDetail> usersList = [
    UserDetail(name: "Thiru", designation: "Developer", userId: 'uid-00001'),
    UserDetail(name: "Guru", designation: "Designer", userId: 'uid-00002'),
    UserDetail(
        name: "Kavin", designation: "Product Mannager", userId: 'uid-00003'),
    UserDetail(name: "Barath", designation: "Architect", userId: 'uid-00004'),
    UserDetail(name: "Aswin", designation: "Advisor", userId: 'uid-00005'),
  ];
}
