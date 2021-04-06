import 'package:flutter/material.dart';
import 'package:klotzen/src/models/card_model.dart';
import 'package:klotzen/src/styles/colors.dart';

class ShotCardAlignment extends StatelessWidget {
  ShotCardAlignment(this.shotCard, {this.visible = false});

  final ShotCard shotCard;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    Image image;
    if (shotCard.fileName != null) {
      image =
          Image.asset("assets/images/" + shotCard.fileName, fit: BoxFit.cover);
    }

    //return transparant Card
    if (shotCard.line1 == "") {
      return Card(
        color: Colors.transparent,
        elevation: 0,
      );
    }

    return Card(
      color: AppColors.dark,
      child: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Material(
                color: AppColors.dark,
                borderRadius: BorderRadius.circular(12.0),
                child: image),
          ),
          SizedBox.expand(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Colors.transparent, Colors.black87],
                      begin: Alignment.center,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(shotCard.line1 == null ? "" : shotCard.line1,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700)),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
