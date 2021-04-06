import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

AudioCache audioCache = AudioCache();
AudioPlayer musicPlayer;
AudioPlayer soundsPlayer;
double musicVolume = 1;

class SoundService {
  // no of primary and secondary sounds available
  static int noPrimaryPop = 2;
  static int noSecondaryPop = 3;

  static pop({bool secondary = false}) async {
    final random = new Random();

    // there are a different no of primary and secondary sounds, so get the
    // // number accordingly
    // int randomNumber =
    //     random.nextInt(secondary ? noSecondaryPop : noPrimaryPop) + 1;

    // String url;
    // if (secondary)
    //   url = 'sounds/pop/secondary/s$randomNumber.mp3';
    // else
    //   url = 'sounds/pop/primary/s$randomNumber.mp3';

    // playAudio(url);
  }

  static playAudio(String url) {
    // try {
    //   audioCache.play(url);
    //   audioCache.clearCache();
    // } catch (e) {
    //   print("ERROR: $e");
    // }
  }

  static chirp() {
    // playAudio('sounds/chirp.mp3');
  }

  static startMusic() async {
    // String url = "music/song.mp3";
    // musicPlayer = await audioCache.loop(url);
  }

  static lowerMusicVolume() {
    //   musicVolume = musicVolume - 0.1;
    //   if (musicVolume <= 0) {
    //     if (musicVolume == 0) musicPlayer.dispose();
    //   } else {
    //     musicPlayer.setVolume(musicVolume);
    //   }
  }
}
