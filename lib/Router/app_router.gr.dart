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
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: Home(key: args.key));
    },
    UsersRoute.name: (routeData) {
      final args = routeData.argsAs<UsersRouteArgs>(
          orElse: () => const UsersRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: Users(key: args.key));
    },
    SongsRoute.name: (routeData) {
      final args = routeData.argsAs<SongsRouteArgs>(
          orElse: () => const SongsRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: Songs(key: args.key));
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: Profile(key: args.key));
    },
    FoldersRoute.name: (routeData) {
      final args = routeData.argsAs<FoldersRouteArgs>(
          orElse: () => const FoldersRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: Folders(key: args.key));
    },
    MelodySongsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const MelodySongs());
    },
    FolkSongsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const FolkSongs());
    },
    SadSongsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SadSongs());
    },
    One1Route.name: (routeData) {
      final args =
          routeData.argsAs<One1RouteArgs>(orElse: () => const One1RouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: One1(key: args.key));
    },
    Two2Route.name: (routeData) {
      final args =
          routeData.argsAs<Two2RouteArgs>(orElse: () => const Two2RouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: Two2(key: args.key));
    },
    Three3Route.name: (routeData) {
      final args = routeData.argsAs<Three3RouteArgs>(
          orElse: () => const Three3RouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: Three3(key: args.key));
    },
    Four4Route.name: (routeData) {
      final args = routeData.argsAs<Four4RouteArgs>(
          orElse: () => const Four4RouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: Four4(key: args.key));
    },
    Five5Route.name: (routeData) {
      final args = routeData.argsAs<Five5RouteArgs>(
          orElse: () => const Five5RouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: Five5(key: args.key));
    },
    AAAARoute.name: (routeData) {
      final args =
          routeData.argsAs<AAAARouteArgs>(orElse: () => const AAAARouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: AAAA(key: args.key));
    },
    BBBBRoute.name: (routeData) {
      final args =
          routeData.argsAs<BBBBRouteArgs>(orElse: () => const BBBBRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: BBBB(key: args.key));
    },
    CCCCRoute.name: (routeData) {
      final args =
          routeData.argsAs<CCCCRouteArgs>(orElse: () => const CCCCRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: CCCC(key: args.key));
    },
    DDDDRoute.name: (routeData) {
      final args =
          routeData.argsAs<DDDDRouteArgs>(orElse: () => const DDDDRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: DDDD(key: args.key));
    },
    EEEERoute.name: (routeData) {
      final args =
          routeData.argsAs<EEEERouteArgs>(orElse: () => const EEEERouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: EEEE(key: args.key));
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
          RouteConfig(UsersRoute.name,
              path: 'users', parent: DashboardRoute.name),
          RouteConfig(SongsRoute.name,
              path: 'songs',
              parent: DashboardRoute.name,
              children: [
                RouteConfig('#redirect',
                    path: '',
                    parent: SongsRoute.name,
                    redirectTo: 'meloday-songs',
                    fullMatch: true),
                RouteConfig(MelodySongsRoute.name,
                    path: 'meloday-songs', parent: SongsRoute.name),
                RouteConfig(FolkSongsRoute.name,
                    path: 'folk-songs', parent: SongsRoute.name),
                RouteConfig(SadSongsRoute.name,
                    path: 'sad-songs', parent: SongsRoute.name)
              ]),
          RouteConfig(ProfileRoute.name,
              path: 'profile', parent: DashboardRoute.name),
          RouteConfig(FoldersRoute.name,
              path: 'folders',
              parent: DashboardRoute.name,
              children: [
                RouteConfig('#redirect',
                    path: '',
                    parent: FoldersRoute.name,
                    redirectTo: 'one-1',
                    fullMatch: true),
                RouteConfig(One1Route.name,
                    path: 'one-1', parent: FoldersRoute.name),
                RouteConfig(Two2Route.name,
                    path: 'two-2',
                    parent: FoldersRoute.name,
                    children: [
                      RouteConfig('#redirect',
                          path: '',
                          parent: Two2Route.name,
                          redirectTo: 'aaaa',
                          fullMatch: true),
                      RouteConfig(AAAARoute.name,
                          path: 'aaaa', parent: Two2Route.name),
                      RouteConfig(BBBBRoute.name,
                          path: 'bbbb', parent: Two2Route.name),
                      RouteConfig(CCCCRoute.name,
                          path: 'cccc', parent: Two2Route.name),
                      RouteConfig(DDDDRoute.name,
                          path: 'dddd', parent: Two2Route.name),
                      RouteConfig(EEEERoute.name,
                          path: 'eeee', parent: Two2Route.name)
                    ]),
                RouteConfig(Three3Route.name,
                    path: 'three-3', parent: FoldersRoute.name),
                RouteConfig(Four4Route.name,
                    path: 'four-4', parent: FoldersRoute.name),
                RouteConfig(Five5Route.name,
                    path: 'five-5', parent: FoldersRoute.name)
              ])
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
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({Key? key})
      : super(HomeRoute.name, path: 'home', args: HomeRouteArgs(key: key));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [Users]
class UsersRoute extends PageRouteInfo<UsersRouteArgs> {
  UsersRoute({Key? key})
      : super(UsersRoute.name, path: 'users', args: UsersRouteArgs(key: key));

  static const String name = 'UsersRoute';
}

class UsersRouteArgs {
  const UsersRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'UsersRouteArgs{key: $key}';
  }
}

/// generated route for
/// [Songs]
class SongsRoute extends PageRouteInfo<SongsRouteArgs> {
  SongsRoute({Key? key, List<PageRouteInfo>? children})
      : super(SongsRoute.name,
            path: 'songs',
            args: SongsRouteArgs(key: key),
            initialChildren: children);

  static const String name = 'SongsRoute';
}

class SongsRouteArgs {
  const SongsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SongsRouteArgs{key: $key}';
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
/// [Folders]
class FoldersRoute extends PageRouteInfo<FoldersRouteArgs> {
  FoldersRoute({Key? key, List<PageRouteInfo>? children})
      : super(FoldersRoute.name,
            path: 'folders',
            args: FoldersRouteArgs(key: key),
            initialChildren: children);

  static const String name = 'FoldersRoute';
}

class FoldersRouteArgs {
  const FoldersRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'FoldersRouteArgs{key: $key}';
  }
}

/// generated route for
/// [MelodySongs]
class MelodySongsRoute extends PageRouteInfo<void> {
  const MelodySongsRoute()
      : super(MelodySongsRoute.name, path: 'meloday-songs');

  static const String name = 'MelodySongsRoute';
}

/// generated route for
/// [FolkSongs]
class FolkSongsRoute extends PageRouteInfo<void> {
  const FolkSongsRoute() : super(FolkSongsRoute.name, path: 'folk-songs');

  static const String name = 'FolkSongsRoute';
}

/// generated route for
/// [SadSongs]
class SadSongsRoute extends PageRouteInfo<void> {
  const SadSongsRoute() : super(SadSongsRoute.name, path: 'sad-songs');

  static const String name = 'SadSongsRoute';
}

/// generated route for
/// [One1]
class One1Route extends PageRouteInfo<One1RouteArgs> {
  One1Route({Key? key})
      : super(One1Route.name, path: 'one-1', args: One1RouteArgs(key: key));

  static const String name = 'One1Route';
}

class One1RouteArgs {
  const One1RouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'One1RouteArgs{key: $key}';
  }
}

/// generated route for
/// [Two2]
class Two2Route extends PageRouteInfo<Two2RouteArgs> {
  Two2Route({Key? key, List<PageRouteInfo>? children})
      : super(Two2Route.name,
            path: 'two-2',
            args: Two2RouteArgs(key: key),
            initialChildren: children);

  static const String name = 'Two2Route';
}

class Two2RouteArgs {
  const Two2RouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'Two2RouteArgs{key: $key}';
  }
}

/// generated route for
/// [Three3]
class Three3Route extends PageRouteInfo<Three3RouteArgs> {
  Three3Route({Key? key})
      : super(Three3Route.name,
            path: 'three-3', args: Three3RouteArgs(key: key));

  static const String name = 'Three3Route';
}

class Three3RouteArgs {
  const Three3RouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'Three3RouteArgs{key: $key}';
  }
}

/// generated route for
/// [Four4]
class Four4Route extends PageRouteInfo<Four4RouteArgs> {
  Four4Route({Key? key})
      : super(Four4Route.name, path: 'four-4', args: Four4RouteArgs(key: key));

  static const String name = 'Four4Route';
}

class Four4RouteArgs {
  const Four4RouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'Four4RouteArgs{key: $key}';
  }
}

/// generated route for
/// [Five5]
class Five5Route extends PageRouteInfo<Five5RouteArgs> {
  Five5Route({Key? key})
      : super(Five5Route.name, path: 'five-5', args: Five5RouteArgs(key: key));

  static const String name = 'Five5Route';
}

class Five5RouteArgs {
  const Five5RouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'Five5RouteArgs{key: $key}';
  }
}

/// generated route for
/// [AAAA]
class AAAARoute extends PageRouteInfo<AAAARouteArgs> {
  AAAARoute({Key? key})
      : super(AAAARoute.name, path: 'aaaa', args: AAAARouteArgs(key: key));

  static const String name = 'AAAARoute';
}

class AAAARouteArgs {
  const AAAARouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AAAARouteArgs{key: $key}';
  }
}

/// generated route for
/// [BBBB]
class BBBBRoute extends PageRouteInfo<BBBBRouteArgs> {
  BBBBRoute({Key? key})
      : super(BBBBRoute.name, path: 'bbbb', args: BBBBRouteArgs(key: key));

  static const String name = 'BBBBRoute';
}

class BBBBRouteArgs {
  const BBBBRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'BBBBRouteArgs{key: $key}';
  }
}

/// generated route for
/// [CCCC]
class CCCCRoute extends PageRouteInfo<CCCCRouteArgs> {
  CCCCRoute({Key? key})
      : super(CCCCRoute.name, path: 'cccc', args: CCCCRouteArgs(key: key));

  static const String name = 'CCCCRoute';
}

class CCCCRouteArgs {
  const CCCCRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CCCCRouteArgs{key: $key}';
  }
}

/// generated route for
/// [DDDD]
class DDDDRoute extends PageRouteInfo<DDDDRouteArgs> {
  DDDDRoute({Key? key})
      : super(DDDDRoute.name, path: 'dddd', args: DDDDRouteArgs(key: key));

  static const String name = 'DDDDRoute';
}

class DDDDRouteArgs {
  const DDDDRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'DDDDRouteArgs{key: $key}';
  }
}

/// generated route for
/// [EEEE]
class EEEERoute extends PageRouteInfo<EEEERouteArgs> {
  EEEERoute({Key? key})
      : super(EEEERoute.name, path: 'eeee', args: EEEERouteArgs(key: key));

  static const String name = 'EEEERoute';
}

class EEEERouteArgs {
  const EEEERouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'EEEERouteArgs{key: $key}';
  }
}
