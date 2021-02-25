import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shots/src/components/core/section.dart';
import 'package:shots/src/components/game/sliding_panel/sections/stopwatch_display.dart';
import 'package:shots/src/providers/card_provider.dart';
import 'package:shots/src/constants/strings.dart';
import 'package:shots/src/providers/game_provider.dart';
import 'package:shots/src/styles/values.dart';

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
            Text("${cardProvider.cardsGoneThrough} Karten"),
            StopwatchDisplay(),
          ],
        ),
      ],
    );
  }
}
