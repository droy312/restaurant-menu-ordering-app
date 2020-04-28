import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuCardClass extends StatelessWidget {
  final String imageAdd;
  final String menuName;

  MenuCardClass({this.imageAdd, this.menuName});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    double cardWidth = (deviceWidth - 60) / 2;
    double cardHeight = cardWidth * 1.5;

    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
      width: cardWidth,
      height: cardHeight,
      decoration: new BoxDecoration(
        boxShadow: [
          new BoxShadow(
            color: Colors.black45,
            offset: Offset(10, 10),
            blurRadius: 20,
          ),
        ],
        color: Colors.black12,
        borderRadius: new BorderRadius.all(Radius.circular(20)),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ClipRRect(
            borderRadius: new BorderRadius.all(Radius.circular(20)),
            child: Image(
              image: AssetImage(imageAdd),
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black,
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(bottom: 20, left: 20),
            child: Text(
              menuName,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'RobotoSlab',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
