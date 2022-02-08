import 'package:auto_route_example/Myapp/myapp_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_ui/mini_ui.dart';

class Users extends StatelessWidget {
  Users({Key? key}) : super(key: key);

  final MyAppController myAppController = Get.find();

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1), () {
      myAppController.navBarTitle.value = "Users";
    });
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
          width: 250,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(width: 1.5, color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: ListView(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 15,
                    child: Text("G"),
                  ),
                  hlSpaceS,
                  const Text("Gopinath"),
                  hlSpaceS,
                  InkWell(
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: Row(
                      children: const [
                        Icon(Icons.edit, size: 17, color: Colors.blue),
                        Text(
                          "Edit",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
