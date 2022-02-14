import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing_sample/authentication/auth_guard.dart';
import 'package:flutter_routing_sample/authentication/login.dart';
import 'package:flutter_routing_sample/dashboard/dashboard.dart';
import 'package:flutter_routing_sample/file_manager/file_manager.dart';
import 'package:flutter_routing_sample/games/games.dart';
import 'package:flutter_routing_sample/home/home.dart';
import 'package:flutter_routing_sample/movies/movies.dart';
import 'package:flutter_routing_sample/movies/popular_movies.dart/popular_movies.dart';
import 'package:flutter_routing_sample/movies/toprated_movies/toprated_movies.dart';
import 'package:flutter_routing_sample/movies/upcoming_movies/upcoming_movies.dart';
import 'package:flutter_routing_sample/my_app.module/unknown_route.dart';
import 'package:flutter_routing_sample/profile/profile.dart';
import 'package:flutter_routing_sample/profile/profile_details.dart';
import 'package:flutter_routing_sample/songs/hiphop_songs/hiphop_songs.dart';
import 'package:flutter_routing_sample/songs/melody_songs/melody_songs.dart';
import 'package:flutter_routing_sample/songs/rock_songs/rock_songs.dart';
import 'package:flutter_routing_sample/songs/songs.dart';

part 'app_router.gr.dart';

//Route Generator Command : flutter packages pub run build_runner build --delete-conflicting-outputs

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute<bool>(
      path: '/login',
      page: Login,
      guards: [LoginRouteGuard],
    ),
    AutoRoute(
      path: '/',
      page: Dashboard,
      initial: true,
      guards: [AuthGuard],
      children: [
        AutoRoute(path: 'home', page: Home, initial: true),
        AutoRoute(path: 'songs', page: Songs),
        AutoRoute(
          path: 'movies',
          page: Movies,
          children: [
            AutoRoute(
                path: 'popular-movies', page: PopularMovies, initial: true),
            AutoRoute(path: 'top-rated-movies', page: TopRatedMovies),
            AutoRoute(path: 'upcoming-movies', page: UpcomingMovies),
          ],
        ),
        AutoRoute(path: 'games', page: Games),
        AutoRoute(path: 'file-manager', page: FileManager),
        AutoRoute(path: 'profile', page: Profile),
        AutoRoute(path: 'user-details/:userId', page: ProfileDetails),
        AutoRoute(path: 'rock-songs', page: RockSongs),
        AutoRoute(path: 'hiphop-songs', page: MelodySongs),
        AutoRoute(path: 'melody-songs', page: HiphopSongs),
      ],
    ),
    AutoRoute(path: '*', page: UnknownRoute),
    // RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {
  AppRouter(
      {required AuthGuard authGuard, required LoginRouteGuard loginRouteGuard})
      : super(authGuard: authGuard, loginRouteGuard: loginRouteGuard);
}
