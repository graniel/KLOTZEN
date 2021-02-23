<h1 align="center"><!-- <a href="">KLOTZEN</a> --><img height="27" src="./icons/android.png"/> Shots</h1>

<p align="center">Our drinking game</p>


**How to play?** One player reads out cards. All other players have to drink based off of what the card says. Those who fail to do so are out of the game. See the images below for a clearer explanation.

<a href='https://apps.apple.com/us/app/shots-a-party-game/id1511015571'><img height="55" alt='Get it on app store' src='./readme-images/badges/appstore.png'/></a>
<a href='https://play.google.com/store/apps/details?id=com.themindstorm.shots'><img height="55" alt='Get it on Google Play' src='./readme-images/badges/google_play.png'/></a>

If you're interested in the swipeable cards, check out thr package [swipeable_card](https://github.com/ninest/swipeable_card).



## 🛠 Build setup
Your system requires the Flutter SDK. Follow the steps here to [install](https://flutter.dev/docs/get-started/install) it on your system. After Flutter is installed, clone or fork this repository.

Once Flutter has been set up, run the app with

```
flutter run
```

The main app entry point is `main.dart`, then `app/app.dart`.

**Note**: I highly recommend you to run the debug version of the app on a physical device instead of an emulator. The card swiping action and animations are more smooth on actual devices.

### Generating icons and splash screens
After updating `pubspec.yaml`, run these commands:
```
flutter pub run flutter_launcher_icons:main
flutter pub pub run flutter_native_splash:create
```

### Editing `router.dart`
Everythime you change `router/router.dart`, you need to run

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

### Build Android APK and appbundle
```
flutter build appbundle
flutter build apk
```

It is possible that the app is on your Android device, but not fully installed. To delete it completely, connect your device to your computer, and run the following command:

```
adb uninstall com.themindstorm.shots
```

Once the APK has been built, install it on a physcally connected Android device:
```
flutter install
```

In the production app, I was getting `ClasscastException at FlutterSplashView.java`. This [SO question](https://stackoverflow.com/questions/61075984/getting-classcastexception-at-fluttersplashview-java-for-one-of-my-published-app) helped.
