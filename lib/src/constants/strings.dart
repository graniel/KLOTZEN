class AppStrings {
  static String get appTitle => "KLOTZEN";

  static String get startButton => "Start";
  static String get termsRouteButton => "Regeln";
  static String get settingsRouteButton => "Settings";
  static String get tutorialButton => "Tutorial";

  static String get packsRouteTitle => "Pack auswählen";
  static String get selectAllButton => "Alle auswählen";
  static String get unSelectAllButton => "Nichts auswählen";
  static String get doneButton => "Fertig";

  static String get statsSectionTitle => "Stats";
  static String get optionsSectionTitle => "Options";
  static String get optionReShuffle => "Neu mischen";
  static String get optionEndGame => "Spiel beenden";
  static String get endOfDeck => "Stapel leer";

  // end game dialog strings
  static String get endDialogTitle => "Beenden?";
  static String get endDialogContinue => "Weiterspielen";
  static String get endDialogEndGame => "Spiel beenden";

  static String get settingsRouteTitle => "Settings";

  static String get termsRouteTitle => "Regeln";
  static String get terms => """
1. Das Handy wird nach jeder Karte im Kreis weiter gegeben.
2. Wenn du bei einer Aufgabe nicht mitmachen willst kannst du stattdessen auch zwei Shots trinken.
3. Während einer Runde darf nicht aus dem Spiel ausgestiegen werden.
4. Verwendet den Jenga Modus, wenn ihr ein Jenga Spiel da habt. In diesem Spielmodus gibt es neben ein paar extra Aufgaben und SHOTSTEINE.
5. Für jeden gezogenen Stein muss der Spieler eine Aufgabe machen. Dann wird das Handy weiter gereicht.
6. Kommt ein SHOTSTEIN, lege deinen Jenga Stein zu allen anderen SHOTSTEINEN in die Mitte.
7. Fällt der Turm ein, trinkt der Verlierer für jeden "Shotstein" einen viertel Shot.
""";

  // settings
  static String get highPerformance => "High performance";
  static String get performanceExplanation =>
      "Using the high performance settings uses more memory and may be laggy on older devices. Try out both and use whichever setting you prefer!";
  static String get jengaMode => "Jenga Modus";
  static String get jengaModeExplanation =>
      "Wenn du mit Jenga spielen möchtest, aktiviere diese Einstellung und bau den Jenga Turm auf!";
}
