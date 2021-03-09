import 'dart:math';

import 'package:flutter/material.dart';

import 'package:shots/src/styles/colors.dart';
import 'package:yaml/yaml.dart';

// this is called shot card and not card because card and material's card will interfire
class ShotCard {
  ShotCard(
      {@required this.line1,
      this.line2,
      this.color,
      this.rotateAngle,
      this.offset});
  String line1, line2;
  final Color color;
  final double rotateAngle;
  final Offset offset;
  String fileName;
  String tag;

  factory ShotCard.random() {
    Random random = new Random();

    // we need number frm 0.01 to 0.10 for angle in radian
    int randNo = random.nextInt(3) + 1; // generates rannd no from 1 to 10
    double rotateAngle = randNo / 100;

    // we also need a 50% chance to multiply the angle by -1
    int randNoC = random.nextInt(2); // generates rand no either 0 or 1
    // if it's 0, multiple angle by -1
    if (randNoC == 0) rotateAngle = -1 * rotateAngle;

    // random offset
    final offset = Offset(
      random.nextInt(10).toDouble() - 5,

      // bigger range in y because cards are taller than they are wide
      random.nextInt(16).toDouble() - 8,
    );

    Color cardColor = AppColors.getColor();

    return ShotCard(
      line1: "newCard",
      line2: null,
      color: cardColor,
      rotateAngle: rotateAngle,
      offset: offset,
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

  factory ShotCard.shotStein() {
    ShotCard randomCard = ShotCard.random();
    randomCard.line1 = "SHOTSTEIN";
    randomCard.fileName = "v (11).jpg";
    return randomCard;
  }
}
