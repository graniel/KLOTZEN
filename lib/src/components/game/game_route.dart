import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shots/src/components/core/buttons/close_button.dart';
import 'package:shots/src/components/game/cards_section_alignment.dart';
import 'package:shots/src/components/game/end_alert.dart';
import 'package:shots/src/components/game/sliding_panel/sections/options.dart';
import 'package:shots/src/components/game/sliding_panel/sections/stats.dart';
import 'package:shots/src/components/game/sliding_panel/sliding_panel.dart';
import 'package:shots/src/models/card_model.dart';
import 'package:shots/src/providers/card_provider.dart';
import 'package:shots/src/styles/values.dart';
import 'package:shots/src/constants/strings.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class GameRoute extends StatelessWidget {
  // controller required to programmatically open sliding panel
  final PanelController _panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    // including this here to change the background color
    final CardProvider cardProvider =
        Provider.of<CardProvider>(context, listen: true);

    // If there is no top card, this returns null
    bool currentCardExists =
        cardProvider.displayedCardIndex <= cardProvider.cards.length;

    return Scaffold(
      // see [_slidingUpPanel] to see how the sliding up panel is coming about
      body: SlidingPanel(
        // if there no cards left, hide the sliding panel because all of its contents
        // (options and stats) are already being shown by _endFfDeck()
        showSlidingPanel: currentCardExists,
        panelController: _panelController,

        // actual page body
        body: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage(
                  "assets/gifs/lsd.gif",
                ),
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
                fit: BoxFit.cover),
          ),
          child: SafeArea(
            child: Stack(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(height: 61),
                    CardsSectionAlignment(context),
                    Container(height: 150),

                    // show end of deck menu
                    if (!currentCardExists) _endOfDeck(),
                  ],
                ),
                // show x button
                // don't show it when the end of deck menu is showing
                // because there are two buttons (End game and X) that do the
                // same thing
                if (currentCardExists)
                  Align(
                    //X Button
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(Values.mainPadding),
                      child: AppCloseButton(
                        overrideOnTap: () => showEndDialog(context),
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _endOfDeck() => Padding(
        padding: EdgeInsets.all(Values.mainPadding),
        child: Column(
          children: <Widget>[
            OptionsSection(overrideTitle: AppStrings.endOfDeck),
            StatsSection(),
          ],
        ),
      );
}
