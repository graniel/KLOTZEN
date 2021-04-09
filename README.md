<h1 align="center"><!-- <a href="">KLOTZEN</a> --><img height="27" src="./icons/android.png"/> KLOTZEN</h1>

<p align="center">Original KLOTZEN App</p>


**How to play?** Start the app/website and chose a pack of your choice. Swipe trought the cards and do the tasks written on them.



## 🛠 Build setup
Your system requires the Flutter SDK. Follow the steps here to [install](https://flutter.dev/docs/get-started/install) it on your system. After Flutter is installed, clone or fork this repository.

Once Flutter has been set up, run the app with

```
flutter run
```

The main app entry point is `main.dart`, then `app/app.dart`.



### Build Android APK and appbundle
```
flutter build appbundle
flutter build apk
```

It is possible that the app is on your Android device, but not fully installed. To delete it completely, connect your device to your computer, and run the following command:

```
adb uninstall com.klotzen.klotzen
```

Once the APK has been built, install it on a physcally connected Android device:
```
flutter install
```

### Run and build WebApp
```
flutter run -d chrome
flutter build web
```
More information on Flutter [Website](https://flutter.dev/docs/get-started/web)
