import 'package:auto_route/auto_route_annotations.dart';
import 'package:shots/src/components/game/game_route.dart';
import 'package:shots/src/components/home/home_route.dart';
import 'package:shots/src/components/packs/packs_route.dart';
import 'package:shots/src/components/selectMode/selectMode_route.dart';
import 'package:shots/src/components/settings/settings_route.dart';
import 'package:shots/src/components/terms/terms_route.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SelectModeRoute selectModeRoute;

  @CupertinoRoute(fullscreenDialog: true)
  HomeRoute homeRoute;

  PacksRoute packsRoute;

  @CupertinoRoute(fullscreenDialog: true)
  GameRoute gameRoute;

  TermsRoute termsRoute;

  SettingsRoute settingsRoute;
}
