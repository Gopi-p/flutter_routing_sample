import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/Folders/folders_controller.dart';
import 'package:auto_route_example/Router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Folders extends StatelessWidget {
  Folders({Key? key}) : super(key: key);

  final FoldersController foldersController = Get.put(FoldersController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.5,
            color: Colors.grey,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 40,
              color: Colors.purple,
              child: Center(
                child: Obx(
                  () => Text(
                    foldersController.breadCrumbString.value,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
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
                              AutoRouter.of(context).push(One1Route());
                            },
                            child: const Text("One"),
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          child: TextButton(
                            onPressed: () {
                              AutoRouter.of(context).push(Two2Route());
                            },
                            child: const Text("Two"),
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          child: TextButton(
                            onPressed: () {
                              AutoRouter.of(context).push(Three3Route());
                            },
                            child: const Text("Three"),
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          child: TextButton(
                            onPressed: () {
                              AutoRouter.of(context).push(Four4Route());
                            },
                            child: const Text("Four"),
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          child: TextButton(
                            onPressed: () {
                              AutoRouter.of(context).push(Five5Route());
                            },
                            child: const Text("Five"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: AutoRouter(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
