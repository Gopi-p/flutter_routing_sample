import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/dashboard/dashboard.dart';
import 'package:flutter_routing_sample/file_manager/file_manager.dart';
import 'package:flutter_routing_sample/games/games.dart';
import 'package:flutter_routing_sample/home/home.dart';
import 'package:flutter_routing_sample/movies/movies.dart';
import 'package:flutter_routing_sample/profile/profile.dart';
import 'package:flutter_routing_sample/songs/hiphop_songs/hiphop_songs.dart';
import 'package:flutter_routing_sample/songs/melody_songs/melody_songs.dart';
import 'package:flutter_routing_sample/songs/rock_songs/rock_songs.dart';
import 'package:flutter_routing_sample/songs/songs.dart';

part 'app_router.gr.dart';

//Route Generator Command : flutter packages pub run build_runner build

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: Dashboard,
      initial: true,
      children: [
        AutoRoute(path: 'home', page: Home, initial: true),
        AutoRoute(path: 'songs', page: Songs),
        AutoRoute(path: 'movies', page: Movies),
        AutoRoute(path: 'games', page: Games),
        AutoRoute(path: 'file-manager', page: FileManager),
        AutoRoute(path: 'profile', page: Profile),
        AutoRoute(path: 'rock-songs', page: RockSongs),
        AutoRoute(path: 'hiphop-songs', page: MelodySongs),
        AutoRoute(path: 'melody-songs', page: HiphopSongs),
      ],
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
