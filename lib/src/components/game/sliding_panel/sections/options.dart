import 'package:flutter/material.dart';
import 'package:klotzen/src/components/core/buttons/button.dart';
import 'package:klotzen/src/components/core/section.dart';
import 'package:klotzen/src/components/core/spacing.dart';
import 'package:klotzen/src/components/game/end_alert.dart';
import 'package:klotzen/src/styles/colors.dart';
import 'package:klotzen/src/styles/values.dart';
import 'package:klotzen/src/constants/strings.dart';

class OptionsSection extends StatelessWidget {
  const OptionsSection({Key key, this.overrideTitle}) : super(key: key);
  final String overrideTitle;

  @override
  Widget build(BuildContext context) {
    return Section(
      title: overrideTitle ?? AppStrings.optionsSectionTitle,
      children: <Widget>[
        Spacing(height: Values.mainPadding / 2),
        Button(
          text: AppStrings.optionEndGame,
          outline: true,
          color: AppColors.danger,
          width: double.infinity,
          onTap: () => showEndDialog(context),
        )
      ],
    );
  }
}
