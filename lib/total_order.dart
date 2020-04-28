import 'package:flutter/material.dart';

class TotalOrderClass extends StatefulWidget {
  double totalCost;
  List<int> counts;
  List<double> costs;

  TotalOrderClass({
    this.totalCost,
    this.counts,
    this.costs,
  });

  @override
  createState() {
    return _TotalOrderClassState(
      totalCost: totalCost,
      counts: counts,
      costs: costs,
    );
  }
}

class _TotalOrderClassState extends State<TotalOrderClass> {
  double totalCost;
  List<int> counts;
  List<double> costs;

  _TotalOrderClassState({
    this.totalCost,
    this.counts,
    this.costs,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text(
          'Total: ' + totalCost.toString(),
          style: TextStyle(
            fontFamily: 'RobotoSlab',
            fontSize: 18,
          ),
        ),
        trailing: Container(
          width: MediaQuery.of(context).size.width / 2,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        for (int i = 0; i < 8; i++) {
                          totalCost += (counts[i] * costs[i]);
                        }
                      });
                    },
                    color: Colors.white,
                    child: Text(
                      'TOTAL',
                      style: TextStyle(
                        fontFamily: 'RobotoSlab',
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: RaisedButton(
                    onPressed: () {
                      print('Ordered!');
                    },
                    color: Colors.white,
                    child: Text(
                      'ORDER',
                      style: TextStyle(
                        fontFamily: 'RobotoSlab',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
