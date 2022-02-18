import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/my_app.app/app_router/app_router.dart';
import 'package:flutter_routing_sample/shared.module/constants/theme.dart';

class Movies extends StatelessWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        PopularMoviesRoute(),
        TopRatedMoviesRoute(),
        UpcomingMoviesRoute(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return DefaultTabController(
          initialIndex: tabsRouter.activeIndex,
          length: 3,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  color: secondaryLightColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                ),
                child: TabBar(
                  onTap: (index) {
                    tabsRouter.setActiveIndex(index);
                  },
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryDarkColor,
                  ),
                  tabs: const [
                    Tab(text: 'Popular'),
                    Tab(text: 'Top Rated'),
                    Tab(text: 'Upcoming'),
                  ],
                ),
              ),
              Expanded(child: child),
            ],
          ),
        );
      },
    );
  }
}
