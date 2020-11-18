import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shots/src/constants/hive_strings.dart';
import 'package:universal_platform/universal_platform.dart';

class SettingsProvider extends ChangeNotifier {
  loadSettings() {
    print("Loading settings ...");
    final settingsBox = Hive.box(HiveBoxes.settings);

    // if iphone, default for [highPerformanceAnimation] should be true
    bool defaultValue = UniversalPlatform.isIOS;
    highPerformanceAnimation = settingsBox
        .get(SettingsBox.highPerformanceAnimation, defaultValue: defaultValue);
    jengaMode = settingsBox.get(SettingsBox.jengaMode, defaultValue: false);
  }

  bool highPerformanceAnimation;
  bool jengaMode;
}

class SettingsService {
  static var _settingsBox = Hive.box(HiveBoxes.settings);

  static enableHighPerformanceAnimations() {
    _settingsBox.put(SettingsBox.highPerformanceAnimation, true);
  }

  static disableHighPerformanceAnimations() {
    _settingsBox.put(SettingsBox.highPerformanceAnimation, false);
  }

  static enableJengaMode() {
    _settingsBox.put(SettingsBox.jengaMode, true);
  }

  static disableJengaMode() {
    _settingsBox.put(SettingsBox.jengaMode, false);
  }
}
