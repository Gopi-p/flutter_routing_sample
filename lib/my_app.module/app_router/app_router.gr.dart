// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const Dashboard());
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(routeData: routeData, child: const Home());
    },
    SongsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(routeData: routeData, child: const Songs());
    },
    MoviesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const Movies());
    },
    GamesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(routeData: routeData, child: Games());
    },
    FileManagerRoute.name: (routeData) {
      return MaterialPageX<dynamic>(routeData: routeData, child: FileManager());
    },
    ProfileRoute.name: (routeData) {
      return MaterialPageX<dynamic>(routeData: routeData, child: Profile());
    },
    RockSongsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const RockSongs());
    },
    MelodySongsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const MelodySongs());
    },
    HiphopSongsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HiphopSongs());
    },
    PopularMoviesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const PopularMovies());
    },
    TopRatedMoviesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const TopRatedMovies());
    },
    UpcomingMoviesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const UpcomingMovies());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(DashboardRoute.name, path: '/', children: [
          RouteConfig('#redirect',
              path: '',
              parent: DashboardRoute.name,
              redirectTo: 'home',
              fullMatch: true),
          RouteConfig(HomeRoute.name,
              path: 'home', parent: DashboardRoute.name),
          RouteConfig(SongsRoute.name,
              path: 'songs', parent: DashboardRoute.name),
          RouteConfig(MoviesRoute.name,
              path: 'movies',
              parent: DashboardRoute.name,
              children: [
                RouteConfig('#redirect',
                    path: '',
                    parent: MoviesRoute.name,
                    redirectTo: 'popular-movies',
                    fullMatch: true),
                RouteConfig(PopularMoviesRoute.name,
                    path: 'popular-movies', parent: MoviesRoute.name),
                RouteConfig(TopRatedMoviesRoute.name,
                    path: 'top-rated-movies', parent: MoviesRoute.name),
                RouteConfig(UpcomingMoviesRoute.name,
                    path: 'upcoming-movies', parent: MoviesRoute.name)
              ]),
          RouteConfig(GamesRoute.name,
              path: 'games', parent: DashboardRoute.name),
          RouteConfig(FileManagerRoute.name,
              path: 'file-manager', parent: DashboardRoute.name),
          RouteConfig(ProfileRoute.name,
              path: 'profile', parent: DashboardRoute.name),
          RouteConfig(RockSongsRoute.name,
              path: 'rock-songs', parent: DashboardRoute.name),
          RouteConfig(MelodySongsRoute.name,
              path: 'hiphop-songs', parent: DashboardRoute.name),
          RouteConfig(HiphopSongsRoute.name,
              path: 'melody-songs', parent: DashboardRoute.name)
        ])
      ];
}

/// generated route for
/// [Dashboard]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(DashboardRoute.name, path: '/', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [Home]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [Songs]
class SongsRoute extends PageRouteInfo<void> {
  const SongsRoute() : super(SongsRoute.name, path: 'songs');

  static const String name = 'SongsRoute';
}

/// generated route for
/// [Movies]
class MoviesRoute extends PageRouteInfo<void> {
  const MoviesRoute({List<PageRouteInfo>? children})
      : super(MoviesRoute.name, path: 'movies', initialChildren: children);

  static const String name = 'MoviesRoute';
}

/// generated route for
/// [Games]
class GamesRoute extends PageRouteInfo<void> {
  const GamesRoute() : super(GamesRoute.name, path: 'games');

  static const String name = 'GamesRoute';
}

/// generated route for
/// [FileManager]
class FileManagerRoute extends PageRouteInfo<void> {
  const FileManagerRoute() : super(FileManagerRoute.name, path: 'file-manager');

  static const String name = 'FileManagerRoute';
}

/// generated route for
/// [Profile]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [RockSongs]
class RockSongsRoute extends PageRouteInfo<void> {
  const RockSongsRoute() : super(RockSongsRoute.name, path: 'rock-songs');

  static const String name = 'RockSongsRoute';
}

/// generated route for
/// [MelodySongs]
class MelodySongsRoute extends PageRouteInfo<void> {
  const MelodySongsRoute() : super(MelodySongsRoute.name, path: 'hiphop-songs');

  static const String name = 'MelodySongsRoute';
}

/// generated route for
/// [HiphopSongs]
class HiphopSongsRoute extends PageRouteInfo<void> {
  const HiphopSongsRoute() : super(HiphopSongsRoute.name, path: 'melody-songs');

  static const String name = 'HiphopSongsRoute';
}

/// generated route for
/// [PopularMovies]
class PopularMoviesRoute extends PageRouteInfo<void> {
  const PopularMoviesRoute()
      : super(PopularMoviesRoute.name, path: 'popular-movies');

  static const String name = 'PopularMoviesRoute';
}

/// generated route for
/// [TopRatedMovies]
class TopRatedMoviesRoute extends PageRouteInfo<void> {
  const TopRatedMoviesRoute()
      : super(TopRatedMoviesRoute.name, path: 'top-rated-movies');

  static const String name = 'TopRatedMoviesRoute';
}

/// generated route for
/// [UpcomingMovies]
class UpcomingMoviesRoute extends PageRouteInfo<void> {
  const UpcomingMoviesRoute()
      : super(UpcomingMoviesRoute.name, path: 'upcoming-movies');

  static const String name = 'UpcomingMoviesRoute';
}
