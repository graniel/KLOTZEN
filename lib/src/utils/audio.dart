import 'dart:io';

import 'package:audioplayers/audio_cache.dart';

playAudio(String url) {
  AudioCache audioCache = AudioCache();
  try {
    audioCache.play(url);
  } catch (e) {
    print("ERROR: $e");
  }
}
