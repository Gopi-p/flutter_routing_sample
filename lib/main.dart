import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/my_app.app/my_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  setPathUrlStrategy();
  await GetStorage.init();
  runApp(MyApp());
}
