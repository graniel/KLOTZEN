import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shots/src/components/core/buttons/button.dart';
import 'package:shots/src/components/core/spacing.dart';
import 'package:shots/src/providers/settings_provider.dart';
import 'package:shots/src/router/router.gr.dart';
import 'package:shots/src/styles/colors.dart';
import 'package:shots/src/styles/text_styles.dart';
import 'package:shots/src/styles/values.dart';

class SelectModeRoute extends StatelessWidget {
  const SelectModeRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightUnit = MediaQuery.of(context).size.height / 12;

    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            // margin: EdgeInsets.symmetric(
            //   horizontal: Values.mainPadding,
            //   vertical: Values.mainPadding * 2,
            // ),
            padding: EdgeInsets.all(Values.mainPadding),
            decoration: BoxDecoration(
              // gradient: _getLinearGradient(),
              color: AppColors.blacks[3],
              border: Border.all(
                width: Values.mainPadding / 2,
                color: Colors.transparent.withOpacity(Values.containerOpacity),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Spacing(height: heightUnit / 2),

                Container(
                  child: Text(
                    "Spielmodus aussuchen",
                    style: TextStyles.title,
                  ),
                ),

                Expanded(child: Container()),
                Button(
                  text: "Karten Modus",
                  color: AppColors.accent,
                  width: 300.0,
                  focus: true,
                  onTap: () => tabCardAction(context),
                ),

                // spacing to make it look cleaner
                Spacing(height: Values.mainPadding),

                Button(
                  text: "Jenga Modus",
                  // outline: true,
                  color: AppColors.oranges[0],
                  focus: true,

                  onTap: () => tabJengaAction(context),
                ),
              ],
            )));
  }

  tabJengaAction(BuildContext context) {
    SettingsService.enableJengaMode();
    ExtendedNavigator.of(context).pushNamed(Routes.homeRoute);
  }

  tabCardAction(BuildContext context) {
    SettingsService.disableJengaMode();
    ExtendedNavigator.of(context).pushNamed(Routes.homeRoute);
  }
}

class JengaSite extends StatelessWidget {
  const JengaSite({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => tabAction(context),
        child: Container(
            color: AppColors.blacks[2],
            child: Column(children: [
              Text(
                "Jenga Mode",
                style: TextStyles.button,
              ),
              Image.asset('assets/images/jenga.png'),
            ])));
  }

  tabAction(BuildContext context) {
    SettingsService.enableJengaMode();
    ExtendedNavigator.of(context).pushNamed(Routes.homeRoute);
  }
}

class CardSite extends StatelessWidget {
  const CardSite({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => tabAction(context),
        child: Container(
            color: AppColors.blacks[2],
            child: Column(children: [
              Text(
                "Card Mode",
                style: TextStyles.button,
              ),
              Image.asset('assets/images/cards.png'),
            ])));
  }

  tabAction(BuildContext context) {
    SettingsService.disableJengaMode();
    ExtendedNavigator.of(context).pushNamed(Routes.homeRoute);
  }
}
