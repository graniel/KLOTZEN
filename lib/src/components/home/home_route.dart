import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lottie/lottie.dart';
import 'package:klotzen/src/components/core/spacing.dart';
import 'package:klotzen/src/components/home/home_options.dart';
import 'package:klotzen/src/constants/hive_strings.dart';
import 'package:klotzen/src/constants/strings.dart';
import 'package:klotzen/src/providers/settings_provider.dart';
import 'package:klotzen/src/styles/colors.dart';
import 'package:klotzen/src/styles/text_styles.dart';
import 'package:klotzen/src/styles/values.dart';
import 'package:flutter/services.dart';
import 'package:klotzen/src/services/sound_service.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration.zero, () => showWarningDialog(context));

    final pages = [normalHomeScreen(context), kiffenHomeScreen(context)];

    return Scaffold(
        body: LiquidSwipe(
      pages: pages,
      fullTransitionValue: 500,
      onPageChangeCallback: (activePageIndex) =>
          changeCurrentScreen(activePageIndex),
    ));
  }

  void showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => warnigDialog(context),
        barrierDismissible: true);
  }

  AlertDialog warnigDialog(BuildContext context) {
    return AlertDialog(
        title: Text("Achtung"),
        content: Text("Jeglicher Konsum auf eigene Gefahr!"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("OK"),
          ),
        ]);
  }

  changeCurrentScreen(int screenNumber) {
    switch (screenNumber) {
      case 0:
        SettingsService.setModeType(ModeTypes.normalMode);
        break;
      case 1:
        SettingsService.setModeType(ModeTypes.kifferMode);
        break;
    }
  }

  Scaffold normalHomeScreen(BuildContext context) {
    List gifNames = ["drink1.gif", "drink2.gif", "drink3.gif", "drink5.gif"];
    gifNames..shuffle();

    double heightUnit = MediaQuery.of(context).size.height / 12;

    return Scaffold(
        //   backgroundColor: color,
        body: Stack(children: [
      Container(
          padding: EdgeInsets.all(Values.mainPadding),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/gifs/drink/" + gifNames[0],
                ),
                fit: BoxFit.cover),
            color: AppColors.pageColor,
            border: Border.all(
              width: Values.mainPadding / 2,
              color: Colors.transparent.withOpacity(Values.containerOpacity),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // extra space above so it doesn't look too weird
              Spacing(height: heightUnit / 2),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    'icons/android.png',
                    scale: 4.0,
                  ),

                  // App name (Shots)
                  Text(
                    AppStrings.appTitle,
                    style: TextStyles.title,
                  ),
                ],
              ),

              Expanded(child: Container()),

              HomeOptions(),
            ],
          )),
      GestureDetector(
          onTap: () => birdOnClick(),
          child: Align(
              alignment: const Alignment(1.0, 1.0),
              child: SizedBox(
                  width: 30.0,
                  height: 40.0,
                  child: OverflowBox(
                      minWidth: 0.0,
                      maxWidth: 100.0,
                      minHeight: 0.0,
                      maxHeight: 100.0,
                      child: GestureDetector(
                          child: Lottie.asset(
                        'assets/animations/bird.json',
                        height: 100,
                      ))))))
    ]));
  }

  void birdOnClick() {
    SoundService.chirp();
    SoundService.lowerMusicVolume();

    //TODO unlock Archievment
  }

  Scaffold kiffenHomeScreen(BuildContext context) {
    double heightUnit = MediaQuery.of(context).size.height / 12;
    return Scaffold(
      //   backgroundColor: color,
      body: Container(
        padding: EdgeInsets.all(Values.mainPadding),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/gifs/lsd.gif",
              ),
              fit: BoxFit.cover),
          border: Border.all(
            width: Values.mainPadding / 2,
            color: Colors.transparent.withOpacity(Values.containerOpacity),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // extra space above so it doesn't look too weird
            Spacing(height: heightUnit / 2),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'icons/android.png',
                  scale: 4.0,
                ),
                Text(
                  AppStrings.appTitle,
                  style: TextStyles.title,
                ),
                Text(AppStrings.kifferModus, style: TextStyles.body1)
              ],
            ),

            Expanded(child: Container()),

            HomeOptions(),
          ],
        ),
      ),
    );
  }
}
