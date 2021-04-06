import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:klotzen/src/components/core/section.dart';
import 'package:klotzen/src/components/game/sliding_panel/sections/stopwatch_display.dart';
import 'package:klotzen/src/providers/card_provider.dart';
import 'package:klotzen/src/constants/strings.dart';

import '../../../../styles/text_styles.dart';

class StatsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CardProvider cardProvider =
        Provider.of<CardProvider>(context, listen: true);

    return Section(
      title: AppStrings.statsSectionTitle,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "${cardProvider.cardsGoneThrough} Karten",
              style: TextStyles.body1,
            ),
            StopwatchDisplay(),
          ],
        ),
      ],
    );
  }
}
