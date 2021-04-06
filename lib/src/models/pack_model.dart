import 'package:klotzen/src/models/card_model.dart';

class Pack {
  Pack({this.name, this.slug, this.description, this.cards, this.normalPack});
  final String name, slug, description;
  final List<ShotCard> cards;
  final bool normalPack;
}
