import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:klotzen/src/constants/hive_strings.dart';
import 'package:universal_platform/universal_platform.dart';
import 'globals.dart' as globals;

class SettingsProvider extends ChangeNotifier {
  loadSettings() {
    print("Loading settings ...");
    final settingsBox = Hive.box(HiveBoxes.settings);

    // if iphone, default for [highPerformanceAnimation] should be true
    bool defaultValue = UniversalPlatform.isIOS;
    highPerformanceAnimation = settingsBox
        .get(SettingsBox.highPerformanceAnimation, defaultValue: defaultValue);
    modeType = settingsBox.get(SettingsBox.modeType,
        defaultValue: ModeTypes.normalMode);
  }

  bool highPerformanceAnimation;
  String modeType;
}

class SettingsService {
  static var _settingsBox = Hive.box(HiveBoxes.settings);

  static enableHighPerformanceAnimations() {
    _settingsBox.put(SettingsBox.highPerformanceAnimation, true);
  }

  static disableHighPerformanceAnimations() {
    _settingsBox.put(SettingsBox.highPerformanceAnimation, false);
  }

  static setModeType(String modeType) {
    globals.modeType = modeType;
  }

  static String getModeTye() {
    // final settingsBox = Hive.box(HiveBoxes.settings);
    print("current ModeType: " + globals.modeType);
    return globals.modeType;
  }

  static nextModeType() {
    String modeType = getModeTye();
    switch (modeType) {
      case ModeTypes.normalMode:
        setModeType(ModeTypes.kifferMode);
        break;
      case ModeTypes.kifferMode:
        setModeType(ModeTypes.normalMode);
        break;
    }
  }
}
