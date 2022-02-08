import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/Myapp/myapp_controller.dart';
import 'package:auto_route_example/Router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_ui/mini_ui.dart';

MyAppController myAppController = Get.find();

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const SideMenu(),
          Expanded(
            child: Column(
              children: const [TopBar(), RouterOutletPlaceHolder()],
            ),
          ),
        ],
      ),
    );
  }
}

class RouterOutletPlaceHolder extends StatelessWidget {
  const RouterOutletPlaceHolder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: AutoRouter(),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      color: Colors.green,
      child: Center(
        child: Obx(
          () => Text(
            myAppController.navBarTitle.value,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.red,
      child: Column(
        children: [
          vlSpaceL,
          const Text(
            "Routing Testing",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          vlSpaceL,
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 43,
                  child: TextButton(
                    onPressed: () {
                      AutoRouter.of(context).push(HomeRoute());
                    },
                    child: const Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 43,
                  child: TextButton(
                    onPressed: () {
                      AutoRouter.of(context).push(UsersRoute());
                    },
                    child: const Text(
                      "Users",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 43,
                  child: TextButton(
                    onPressed: () {
                      AutoRouter.of(context).push(SongsRoute());
                    },
                    child: const Text(
                      "Songs",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 43,
                  child: TextButton(
                    onPressed: () {
                      AutoRouter.of(context).push(ProfileRoute());
                    },
                    child: const Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 43,
                  child: TextButton(
                    onPressed: () {
                      AutoRouter.of(context).push(FoldersRoute());
                    },
                    child: const Text(
                      "Folders",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
