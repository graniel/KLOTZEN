import 'package:flutter/material.dart';
import 'package:klotzen/src/components/core/buttons/button.dart';
import 'package:klotzen/src/components/core/spacing.dart';
import 'package:klotzen/src/constants/strings.dart';
import 'package:klotzen/src/services/game_service.dart';
import 'package:klotzen/src/styles/colors.dart';
import 'package:klotzen/src/styles/text_styles.dart';
import 'package:klotzen/src/styles/values.dart';
import 'package:klotzen/src/utils/extensions.dart';

showEndDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.pageColor,
            // a bigger border radius looks better
            borderRadius: BorderRadius.circular(Values.borderRadius * 2),
            border: Border.all(
              width: 1,
              color: AppColors.pageBorderColor,
            ),
          ),
          padding: EdgeInsets.all(Values.mainPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                AppStrings.endDialogTitle,
                // make font size smaller
                style: TextStyles.title //
                    .s(1.5 * Values.em),
              ),

              // spacing to make it look cleaner
              Spacing(height: Values.mainPadding),

              // options (continue game and end game)
              Button(
                text: AppStrings.endDialogContinue,
                color: AppColors.accent,
                onTap: () => _closeDialog(context),
              ),

              // spacing to make it look cleaner
              Spacing(height: Values.mainPadding / 2),

              Button(
                  text: AppStrings.endDialogEndGame,
                  // outline: true,
                  color: AppColors.danger,
                  onTap: () => GameService.end(context)),
            ],
          ),
        ),
      );
    },
  );
}

void _closeDialog(BuildContext context) {
  Navigator.pop(context);
}
