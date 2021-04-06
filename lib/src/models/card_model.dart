import 'package:flutter/material.dart';
import 'package:yaml/yaml.dart';

// this is called shot card and not card because card and material's card will interfire
class ShotCard {
  ShotCard({
    @required this.line1,
  });
  String line1;
  String fileName;
  String tag;

  factory ShotCard.random() {
    return ShotCard(
      line1: "newCard",
    );
  }

  factory ShotCard.fromJson(YamlMap map) {
    ShotCard randomCard = ShotCard.random();

    String input = map['line1'];

    //Make Text for EasyVersion
    //String text = input.replaceAll("Shot", "Ingwershot");
    randomCard.line1 = input;

    //load imagePath
    randomCard.fileName = map['filename'];
    //load tag
    randomCard.tag = map['tag'];
    return randomCard;
  }

  factory ShotCard.transparent() {
    return ShotCard(line1: "");
  }
}
