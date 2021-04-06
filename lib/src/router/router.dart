import 'package:auto_route/annotations.dart';
import 'package:klotzen/src/components/game/game_route.dart';
import 'package:klotzen/src/components/home/home_route.dart';
import 'package:klotzen/src/components/packs/packs_route.dart';
import 'package:klotzen/src/components/terms/terms_route.dart';

import '../components/game/game_route.dart';
import '../components/terms/terms_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeRoute, initial: true),
    AutoRoute(page: PacksScreen),
    AutoRoute(page: GameRoute),
    AutoRoute(page: TermsRoute)
  ],
)
class $AppRouter {}
