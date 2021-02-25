import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:shots/src/components/core/spacing.dart';
import 'package:shots/src/components/home/home_options.dart';
import 'package:shots/src/constants/hive_strings.dart';
import 'package:shots/src/constants/strings.dart';
import 'package:shots/src/providers/settings_provider.dart';
import 'package:shots/src/styles/colors.dart';
import 'package:shots/src/styles/text_styles.dart';
import 'package:shots/src/styles/values.dart';
import 'package:flutter/services.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    final pages = [normalHomeScreen(context), kiffenHomeScreen(context)];

    return Scaffold(
        body: LiquidSwipe(
      pages: pages,
      fullTransitionValue: 500,
      enableSlideIcon: true,
      onPageChangeCallback: (activePageIndex) =>
          changeCurrentScreen(activePageIndex),
    ));
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
        body: Container(
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
      ),
    ));
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
