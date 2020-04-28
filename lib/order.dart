import 'package:flutter/material.dart';

import './order_card.dart';
import './home.dart';

class OrderClass extends StatefulWidget {
  List<String> imageAdds = new List<String>();
  List<String> menuNames = new List<String>();

  OrderClass({
    this.imageAdds,
    this.menuNames,
  });

  @override
  State<StatefulWidget> createState() {
    return _OrderClassState(
      imageAdds: imageAdds,
      menuNames: menuNames,
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBarOrder = const SnackBar(content: Text('Your order is placed'));
final SnackBar snackBarCancel = const SnackBar(content: Text('Order cancelled'));


class _OrderClassState extends State<OrderClass> {
  List<double> costs = [100, 150, 200, 120, 100, 150, 200, 120];
  List<int> counts = [0, 0, 0, 0, 0, 0, 0, 0];

  List<String> imageAdds = new List<String>();
  List<String> menuNames = new List<String>();

  _OrderClassState({
    this.imageAdds,
    this.menuNames,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          'Order',
          style: TextStyle(
            fontFamily: 'RobotoSlab',
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            OrderCardClass(
              imageAdd: imageAdds[0],
              menuName: menuNames[0],
              cost: costs[0],
              count: counts[0],
              selectedItem: selectedItems[0],
            ),
            OrderCardClass(
              imageAdd: imageAdds[1],
              menuName: menuNames[1],
              cost: costs[1],
              count: counts[1],
              selectedItem: selectedItems[1],
            ),
            OrderCardClass(
              imageAdd: imageAdds[2],
              menuName: menuNames[2],
              cost: costs[2],
              count: counts[2],
              selectedItem: selectedItems[2],
            ),
            OrderCardClass(
              imageAdd: imageAdds[3],
              menuName: menuNames[3],
              cost: costs[3],
              count: counts[3],
              selectedItem: selectedItems[3],
            ),
            OrderCardClass(
              imageAdd: imageAdds[4],
              menuName: menuNames[4],
              cost: costs[4],
              count: counts[4],
              selectedItem: selectedItems[4],
            ),
            OrderCardClass(
              imageAdd: imageAdds[5],
              menuName: menuNames[5],
              cost: costs[5],
              count: counts[5],
              selectedItem: selectedItems[5],
            ),
            OrderCardClass(
              imageAdd: imageAdds[6],
              menuName: menuNames[6],
              cost: costs[6],
              count: counts[6],
              selectedItem: selectedItems[6],
            ),
            OrderCardClass(
              imageAdd: imageAdds[7],
              menuName: menuNames[7],
              cost: costs[7],
              count: counts[7],
              selectedItem: selectedItems[7],
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: RaisedButton(
                onPressed: () {
                  scaffoldKey.currentState.showSnackBar(snackBarOrder);
                },
                child: Text(
                  'ORDER',
                  style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    fontSize: 18,
                  ),
                ),
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: RaisedButton(
                onPressed: () {
                  scaffoldKey.currentState.showSnackBar(snackBarCancel);
                },
                child: Text(
                  'CANCEL',
                  style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    fontSize: 18,
                  ),
                ),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
