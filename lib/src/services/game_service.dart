import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:klotzen/src/models/card_model.dart';
import 'package:klotzen/src/providers/card_provider.dart';
import 'package:klotzen/src/providers/game_provider.dart';
import 'package:klotzen/src/providers/packs_provider.dart';
import 'package:klotzen/src/providers/stopwatch_provider.dart';
import '../router/router.gr.dart';

class GameService {
  /// Execute all functions required for the game to start
  static start(BuildContext context) {
    //first stop running game
    endRunningGame(context);

    /*
    Few things to do:
    1. Load the cards (they are already in the packs)
    2. Set gamestarted to true in GameProvider
    3. Start the stopwatch
    */

    // Loading the cards
    PacksProvider packsProvider =
        Provider.of<PacksProvider>(context, listen: false);
    CardProvider cardProvider =
        Provider.of<CardProvider>(context, listen: false);

    List<ShotCard> cards = [];
    for (var eachPack in packsProvider.selectedPacks) {
      cards = [...cards, ...eachPack.cards];
    }

    // tags
    List<ShotCard> warum_cards = [];
    List<ShotCard> pantomime_cards = [];
    List<ShotCard> final_cards = [];
    //filter cards
    warum_cards = cards.where((element) => element.tag == "warum").toList();
    pantomime_cards =
        cards.where((element) => element.tag == "pantomime").toList();
    final_cards = cards.where((element) => element.tag == null).toList();

    Random rand = new Random();
    if (warum_cards.isNotEmpty) {
      final_cards.add(warum_cards.elementAt(rand.nextInt(warum_cards.length)));
    }
    if (pantomime_cards.isNotEmpty) {
      final_cards
          .add(pantomime_cards.elementAt(rand.nextInt(pantomime_cards.length)));
    }

    cardProvider.loadCards(final_cards);

    print((final_cards.length + 1).toString() + " cards loaded");

    // Setting game started to true
    GameProvider gameProvider =
        Provider.of<GameProvider>(context, listen: false);
    gameProvider.startGame();

    // Start the timer
    StopwatchProvider stopwatchProvider =
        Provider.of<StopwatchProvider>(context, listen: false);
    stopwatchProvider.start();

    //unselect Packs
    packsProvider.unselectPacks();

    // go to game routes to start game
    context.router.push(GameRoute());
  }

  /// Execute all functions required for the game to end
  static end(BuildContext context) {
    endRunningGame(context);

    // also need to empty the packs
    PacksProvider packsProvider =
        Provider.of<PacksProvider>(context, listen: false);
    packsProvider.unselectPacks();

    // go to game routes to home page
    // popping first time to go back to pack selection screen
    // second time to go to main screen

    context.router.push(HomeRoute());
  }

  static endRunningGame(BuildContext context) {
    /*
    1. Empty the cards list
    2. Empty the packs list
    3. Stop the stopwatch
    4. Set gamestarted to false in GameProvider
    */

    // empty the cards list
    CardProvider cardProvider =
        Provider.of<CardProvider>(context, listen: false);
    cardProvider.endGame();

    // Stop the staopwatch
    StopwatchProvider stopwatchProvider =
        Provider.of<StopwatchProvider>(context, listen: false);
    try {
      stopwatchProvider.stop();
    } catch (e) {
      print("Stopwatch not started yet");
    }

    // Setting game started to false
    GameProvider gameProvider =
        Provider.of<GameProvider>(context, listen: false);
    gameProvider.gameStarted = false;
  }
}
