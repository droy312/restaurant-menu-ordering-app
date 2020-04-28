import 'package:flutter/material.dart';

class OrderCardClass extends StatefulWidget {
  String imageAdd;
  String menuName;
  double cost;
  int count;
  bool selectedItem;

  OrderCardClass({
    this.imageAdd,
    this.menuName,
    this.cost,
    this.count,
    this.selectedItem,
  });

  @override
  State<StatefulWidget> createState() {
    return _OrderCardClassState(
      imageAdd: imageAdd,
      menuName: menuName,
      cost: cost,
      count: count,
      selectedItem: selectedItem,
    );
  }
}

class _OrderCardClassState extends State<OrderCardClass> {
  String imageAdd;
  String menuName;
  double cost;
  int count;
  bool selectedItem;

  _OrderCardClassState({
    this.imageAdd,
    this.menuName,
    this.cost,
    this.count,
    this.selectedItem,
  });

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return selectedItem ? Card(
      child: ListTile(
        leading: ClipRRect(
          child: Image.asset(imageAdd),
          borderRadius: new BorderRadius.all(Radius.circular(4)),
        ),
        title: Text(
          menuName,
          style: TextStyle(
            fontFamily: 'RobotoSlab',
          ),
        ),
        subtitle: Text(
          'Rs. ' + cost.toString() + '/-',
          style: TextStyle(
            fontFamily: 'RobotoSlab',
          ),
        ),
        trailing: Container(
          width: deviceWidth / 2,
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      if (count > 0) {
                        count--;
                      } else if (count == 0) {
                        count = 0;
                      }
                    });
                  },
                  child: Icon(Icons.remove_circle_outline),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    count.toString(),
                    style: TextStyle(
                      fontFamily: 'RobotoSlab',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Icon(Icons.add_circle_outline),
                ),
              ),
            ],
          ),
        ),
      ),
    ) : Container();
  }
}