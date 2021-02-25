import 'package:flutter/services.dart';
import 'package:shots/src/constants/hive_strings.dart';
import 'package:shots/src/models/card_model.dart';
import 'package:shots/src/models/pack_model.dart';
import 'package:shots/src/providers/settings_provider.dart';
import 'package:yaml/yaml.dart';

class PackService {
  static Future<List<Pack>> loadPacks() async {
    /*
    1. Read yml file metadata.yml and get a list of packs
    2. Read each file from packs/ to get the cards
    */

    // reading metadata.yml
    final fileContent = await rootBundle.loadString('assets/metadata.yml');
    final metadata = loadYaml(fileContent);

    List<Pack> packs = [];

    for (var packMap in metadata) {
      // load cards by reading their files

      // BUG: error in the loop sometimes ocurs. Cannot replroduce it

      print("Adding pack");
      try {
        final List<ShotCard> cards = await _loadCards(packMap['slug']);

        final newPack = Pack(
            name: packMap['name'],
            slug: packMap['slug'],
            description: packMap['description'],
            cards: cards,
            normalPack: packMap['normalPack']);

        packs.add(newPack);
      } catch (e) {
        print(e);
        // If there's a card pack listed in metadata.yml, but with no {pack}.yml file,
        // there will be a silent error so the app doesn't crash
      }
    }

    return packs;
  }

  /// [slug] is the filename (filename.yml)
  /// This function will not be called on its own; it is only supposed to be called
  /// from the [[loadPacks()]] function
  static Future<List<ShotCard>> _loadCards(String slug) async {
    /*
    1. Read filename and return list of cards
    */

    final fileContent = await rootBundle.loadString('assets/packs/$slug.yml');
    final YamlList yamlListCards = loadYaml(fileContent);

    List<ShotCard> cards = [];
    for (var cardMap in yamlListCards) {
      final newCard = ShotCard.fromJson(cardMap);
      cards.add(newCard);
    }

    return cards;
  }
}
