import 'dart:html';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:klotzen/src/app.dart';
import 'package:klotzen/src/services/sound_service.dart';
import 'package:provider/provider.dart';
import 'package:klotzen/src/constants/hive_strings.dart';
import 'package:klotzen/src/providers/card_provider.dart';
import 'package:klotzen/src/providers/game_provider.dart';
import 'package:klotzen/src/providers/packs_provider.dart';
import 'package:klotzen/src/providers/settings_provider.dart';
import 'package:klotzen/src/providers/stopwatch_provider.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(HiveBoxes.settings);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Start music on Web or App
    if (kIsWeb)
      document.body.addEventListener(
          "mousedown", listener); // Listen for the touch action
    else
      SoundService.startMusic();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SettingsProvider>(
            create: (_) => SettingsProvider()),
        ChangeNotifierProvider<GameProvider>(create: (_) => GameProvider()),
        ChangeNotifierProvider<CardProvider>(create: (_) => CardProvider()),
        ChangeNotifierProvider<PacksProvider>(create: (_) => PacksProvider()),
        ChangeNotifierProvider<StopwatchProvider>(
            create: (_) => StopwatchProvider()),
      ],
      child: App(),
    );
  }

  void listener(Event event) {
    if (!musicPlaying) {
      SoundService.startMusic();
    }
  }
}
