import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shots/src/app.dart';
import 'package:provider/provider.dart';
import 'package:shots/src/constants/hive_strings.dart';
import 'package:shots/src/providers/card_provider.dart';
import 'package:shots/src/providers/game_provider.dart';
import 'package:shots/src/providers/packs_provider.dart';
import 'package:shots/src/providers/settings_provider.dart';
import 'package:shots/src/providers/stopwatch_provider.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'src/providers/globals.dart' as globals;

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(HiveBoxes.settings);
  // await Hive.openBox(HiveBoxes.customCards);

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
    globals.audioPlayer = AssetsAudioPlayer();
    globals.audioPlayer.open(
      Audio(
        "assets/music/song.mp3",
      ),
      loopMode: LoopMode.single,
    );
    globals.audioPlayer.playOrPause();
  }

  @override
  void dispose() {
    globals.audioPlayer.stop();
    globals.audioPlayer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
}
