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
  _$AppRouter(
      {GlobalKey<NavigatorState>? navigatorKey,
      required this.loginRouteGuard,
      required this.authGuard})
      : super(navigatorKey);

  final LoginRouteGuard loginRouteGuard;

  final AuthGuard authGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return MaterialPageX<bool>(
          routeData: routeData,
          child: Login(key: args.key, onLogin: args.onLogin));
    },
    DashboardRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const Dashboard());
    },
    UnknownRouteRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const UnknownRoute());
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
      final args = routeData.argsAs<GamesRouteArgs>(
          orElse: () => const GamesRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: Games(key: args.key));
    },
    FileManagerRoute.name: (routeData) {
      final args = routeData.argsAs<FileManagerRouteArgs>(
          orElse: () => const FileManagerRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: FileManager(key: args.key));
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: Profile(key: args.key));
    },
    ProfileDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProfileDetailsRouteArgs>(
          orElse: () =>
              ProfileDetailsRouteArgs(userId: pathParams.getString('userId')));
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: ProfileDetails(key: args.key, userId: args.userId));
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
    },
    PicturesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(routeData: routeData, child: Pictures());
    },
    DocumentsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(routeData: routeData, child: Documents());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(LoginRoute.name, path: '/login', guards: [loginRouteGuard]),
        RouteConfig(DashboardRoute.name, path: '/', guards: [
          authGuard
        ], children: [
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
              path: 'file-manager',
              parent: DashboardRoute.name,
              children: [
                RouteConfig('#redirect',
                    path: '',
                    parent: FileManagerRoute.name,
                    redirectTo: 'pictures',
                    fullMatch: true),
                RouteConfig(PicturesRoute.name,
                    path: 'pictures', parent: FileManagerRoute.name),
                RouteConfig(DocumentsRoute.name,
                    path: 'documents', parent: FileManagerRoute.name)
              ]),
          RouteConfig(ProfileRoute.name,
              path: 'profile', parent: DashboardRoute.name),
          RouteConfig(ProfileDetailsRoute.name,
              path: 'user-details/:userId', parent: DashboardRoute.name),
          RouteConfig(RockSongsRoute.name,
              path: 'rock-songs', parent: DashboardRoute.name),
          RouteConfig(MelodySongsRoute.name,
              path: 'hiphop-songs', parent: DashboardRoute.name),
          RouteConfig(HiphopSongsRoute.name,
              path: 'melody-songs', parent: DashboardRoute.name)
        ]),
        RouteConfig(UnknownRouteRoute.name, path: '*')
      ];
}

/// generated route for
/// [Login]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({Key? key, dynamic Function(bool)? onLogin})
      : super(LoginRoute.name,
            path: '/login', args: LoginRouteArgs(key: key, onLogin: onLogin));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, this.onLogin});

  final Key? key;

  final dynamic Function(bool)? onLogin;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLogin: $onLogin}';
  }
}

/// generated route for
/// [Dashboard]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(DashboardRoute.name, path: '/', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [UnknownRoute]
class UnknownRouteRoute extends PageRouteInfo<void> {
  const UnknownRouteRoute() : super(UnknownRouteRoute.name, path: '*');

  static const String name = 'UnknownRouteRoute';
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
class GamesRoute extends PageRouteInfo<GamesRouteArgs> {
  GamesRoute({Key? key})
      : super(GamesRoute.name, path: 'games', args: GamesRouteArgs(key: key));

  static const String name = 'GamesRoute';
}

class GamesRouteArgs {
  const GamesRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'GamesRouteArgs{key: $key}';
  }
}

/// generated route for
/// [FileManager]
class FileManagerRoute extends PageRouteInfo<FileManagerRouteArgs> {
  FileManagerRoute({Key? key, List<PageRouteInfo>? children})
      : super(FileManagerRoute.name,
            path: 'file-manager',
            args: FileManagerRouteArgs(key: key),
            initialChildren: children);

  static const String name = 'FileManagerRoute';
}

class FileManagerRouteArgs {
  const FileManagerRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'FileManagerRouteArgs{key: $key}';
  }
}

/// generated route for
/// [Profile]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({Key? key})
      : super(ProfileRoute.name,
            path: 'profile', args: ProfileRouteArgs(key: key));

  static const String name = 'ProfileRoute';
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ProfileDetails]
class ProfileDetailsRoute extends PageRouteInfo<ProfileDetailsRouteArgs> {
  ProfileDetailsRoute({Key? key, required String userId})
      : super(ProfileDetailsRoute.name,
            path: 'user-details/:userId',
            args: ProfileDetailsRouteArgs(key: key, userId: userId),
            rawPathParams: {'userId': userId});

  static const String name = 'ProfileDetailsRoute';
}

class ProfileDetailsRouteArgs {
  const ProfileDetailsRouteArgs({this.key, required this.userId});

  final Key? key;

  final String userId;

  @override
  String toString() {
    return 'ProfileDetailsRouteArgs{key: $key, userId: $userId}';
  }
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

/// generated route for
/// [Pictures]
class PicturesRoute extends PageRouteInfo<void> {
  const PicturesRoute() : super(PicturesRoute.name, path: 'pictures');

  static const String name = 'PicturesRoute';
}

/// generated route for
/// [Documents]
class DocumentsRoute extends PageRouteInfo<void> {
  const DocumentsRoute() : super(DocumentsRoute.name, path: 'documents');

  static const String name = 'DocumentsRoute';
}
