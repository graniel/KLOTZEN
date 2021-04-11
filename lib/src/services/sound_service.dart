import 'dart:html';
import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

AudioCache audioCache = AudioCache();
AudioPlayer musicPlayer = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
AudioPlayer soundsPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
double musicVolume = 1;
//musicPlaying for starting music on PageClick Listener
bool get musicPlaying {
  return musicPlayer.state == AudioPlayerState.PLAYING;
}

class SoundService {
  // no of primary and secondary sounds available
  static int noPrimaryPop = 2;
  static int noSecondaryPop = 3;

  static pop({bool secondary = false}) async {
    final random = new Random();

    //there are a different no of primary and secondary sounds, so get the
    // number accordingly
    int randomNumber =
        random.nextInt(secondary ? noSecondaryPop : noPrimaryPop) + 1;

    String url;
    if (secondary)
      url = 'assets/sounds/pop/secondary/s$randomNumber.mp3';
    else
      url = 'assets/sounds/pop/primary/s$randomNumber.mp3';

    playAudio(url);
  }

  static playAudio(String url) {
    try {
      soundsPlayer.play(url);
    } catch (e) {
      print("ERROR: $e");
    }
  }

  static chirp() {
    playAudio('assets/sounds/chirp.mp3');
  }

  static startMusic() async {
    String url = "assets/music/song.mp3";
    await musicPlayer.setUrl(url, isLocal: true);
    await musicPlayer.setReleaseMode(ReleaseMode.LOOP);
    await musicPlayer.resume();
  }

  static lowerMusicVolume() {
    musicVolume = musicVolume - 0.1;
    if (musicVolume <= 0) {
      if (musicVolume == 0) musicPlayer.release();
    } else {
      musicPlayer.setVolume(musicVolume);
    }
  }
}
