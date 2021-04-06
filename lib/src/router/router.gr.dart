// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../components/game/game_route.dart' as _i4;
import '../components/home/home_route.dart' as _i2;
import '../components/packs/packs_route.dart' as _i3;
import '../components/terms/terms_route.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i2.HomeRoute());
    },
    PacksScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i3.PacksScreen());
    },
    GameRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i4.GameRoute());
    },
    TermsRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i5.TermsRoute());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(PacksScreen.name, path: '/packs-screen'),
        _i1.RouteConfig(GameRoute.name, path: '/game-route'),
        _i1.RouteConfig(TermsRoute.name, path: '/terms-route')
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class PacksScreen extends _i1.PageRouteInfo {
  const PacksScreen() : super(name, path: '/packs-screen');

  static const String name = 'PacksScreen';
}

class GameRoute extends _i1.PageRouteInfo {
  const GameRoute() : super(name, path: '/game-route');

  static const String name = 'GameRoute';
}

class TermsRoute extends _i1.PageRouteInfo {
  const TermsRoute() : super(name, path: '/terms-route');

  static const String name = 'TermsRoute';
}
