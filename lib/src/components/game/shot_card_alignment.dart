import 'package:flutter/material.dart';
import 'package:shots/src/models/card_model.dart';

class ShotCardAlignment extends StatelessWidget {
  ShotCardAlignment(this.shotCard);

  final ShotCard shotCard;

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
      child: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Material(
                borderRadius: BorderRadius.circular(12.0), child: image),
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
                    Opacity(
                      opacity: 1,
                      child: Text(shotCard.line1 == null ? "" : shotCard.line1,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700)),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
