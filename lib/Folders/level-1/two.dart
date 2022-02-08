import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/Folders/folders_controller.dart';
import 'package:auto_route_example/Router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Two2 extends StatelessWidget {
  Two2({Key? key}) : super(key: key);
  final FoldersController foldersController = Get.find();
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1), () {
      foldersController.breadCrumbString.value = "/two";
    });
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.5,
              color: Colors.grey,
            ),
          ),
          width: 130,
          child: Column(
            children: [
              const SizedBox(height: 30),
              SizedBox(
                width: 130,
                child: TextButton(
                  onPressed: () {
                    AutoRouter.of(context).push(AAAARoute());
                  },
                  child: const Text(
                    "Aaaa",
                    style: TextStyle(color: Colors.amberAccent),
                  ),
                ),
              ),
              SizedBox(
                width: 130,
                child: TextButton(
                  onPressed: () {
                    AutoRouter.of(context).push(BBBBRoute());
                  },
                  child: const Text(
                    "Bbbb",
                    style: TextStyle(color: Colors.amberAccent),
                  ),
                ),
              ),
              SizedBox(
                width: 130,
                child: TextButton(
                  onPressed: () {
                    AutoRouter.of(context).push(CCCCRoute());
                  },
                  child: const Text(
                    "Cccc",
                    style: TextStyle(color: Colors.amberAccent),
                  ),
                ),
              ),
              SizedBox(
                width: 130,
                child: TextButton(
                  onPressed: () {
                    AutoRouter.of(context).push(DDDDRoute());
                  },
                  child: const Text(
                    "Dddd",
                    style: TextStyle(color: Colors.amberAccent),
                  ),
                ),
              ),
              SizedBox(
                width: 130,
                child: TextButton(
                  onPressed: () {
                    AutoRouter.of(context).push(EEEERoute());
                  },
                  child: const Text(
                    "Eeee",
                    style: TextStyle(color: Colors.amberAccent),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          child: AutoRouter(),
        )
      ],
    );
  }
}
