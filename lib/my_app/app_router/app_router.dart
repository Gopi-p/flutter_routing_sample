import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/Dashboard/dashboard.dart';
import 'package:auto_route_example/Folders/folders.dart';
import 'package:auto_route_example/Folders/level-1/five.dart';
import 'package:auto_route_example/Folders/level-1/four.dart';
import 'package:auto_route_example/Folders/level-1/one.dart';
import 'package:auto_route_example/Folders/level-1/three.dart';
import 'package:auto_route_example/Folders/level-1/two.dart';
import 'package:auto_route_example/Folders/level-2/aaaa.dart';
import 'package:auto_route_example/Folders/level-2/bbbb.dart';
import 'package:auto_route_example/Folders/level-2/cccc.dart';
import 'package:auto_route_example/Folders/level-2/dddd.dart';
import 'package:auto_route_example/Folders/level-2/eeee.dart';
import 'package:auto_route_example/Home/home.dart';
import 'package:auto_route_example/Profile/profile.dart';
import 'package:auto_route_example/Songs/melody_songs.dart';
import 'package:auto_route_example/Songs/folk_songs.dart';
import 'package:auto_route_example/Songs/sad_songs.dart';
import 'package:auto_route_example/Songs/songs.dart';
import 'package:auto_route_example/Users/users.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: Dashboard,
      initial: true,
      children: [
        AutoRoute(path: 'home', page: Home, initial: true),
        AutoRoute(path: 'users', page: Users),
        AutoRoute(
          path: 'songs',
          page: Songs,
          children: [
            AutoRoute(path: 'meloday-songs', page: MelodySongs, initial: true),
            AutoRoute(path: 'folk-songs', page: FolkSongs),
            AutoRoute(path: 'sad-songs', page: SadSongs),
          ],
        ),
        AutoRoute(path: 'profile', page: Profile),
        AutoRoute(
          path: 'folders',
          page: Folders,
          children: [
            AutoRoute(path: 'one-1', page: One1, initial: true),
            AutoRoute(
              path: 'two-2',
              page: Two2,
              children: [
                AutoRoute(path: 'aaaa', page: AAAA, initial: true),
                AutoRoute(path: 'bbbb', page: BBBB),
                AutoRoute(path: 'cccc', page: CCCC),
                AutoRoute(path: 'dddd', page: DDDD),
                AutoRoute(path: 'eeee', page: EEEE),
              ],
            ),
            AutoRoute(path: 'three-3', page: Three3),
            AutoRoute(path: 'four-4', page: Four4),
            AutoRoute(path: 'five-5', page: Five5),
          ],
        ),
      ],
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}


//Route Generator Command : flutter packages pub run build_runner build