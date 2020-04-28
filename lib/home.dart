import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './menu_card.dart';
import './order.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

List<String> menuNames = [
  'Fish Curry',
  'Chicken Curry',
  'Butter Chicken',
  'Pizza',
  'Onion Rings',
  'Paneer Butter Masala',
  'Noodles',
  'Biryani',
];

List<String> menuImages = [
  'images/fish_curry.jpg',
  'images/chicken_curry.jpg',
  'images/butter_chicken.jpg',
  'images/pizza.jpg',
  'images/onion_rings.jpg',
  'images/paneer_butter_masala.jpg',
  'images/noodles.jpg',
  'images/biryani.jpg',
];

List<bool> selectedItems = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];

void openOrderPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (BuildContext context) {
      return OrderClass(
        imageAdds: menuImages,
        menuNames: menuNames,
      );
    }),
  );
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double cardWidth = (deviceWidth - 60) / 2;
    double cardHeight = cardWidth * 1.5;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          'Kitchen',
          style: TextStyle(
            fontFamily: 'RobotoSlab',
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.black,
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              openOrderPage(context);
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              child: GridView.count(
                physics: BouncingScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: (deviceWidth / 2) / (cardHeight + 40),
                children: <Widget>[
                  CupertinoButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      selectedItems[0] = true;
                    },
                    child: MenuCardClass(
                      imageAdd: menuImages[0],
                      menuName: menuNames[0],
                    ),
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      selectedItems[1] = true;
                    },
                    child: MenuCardClass(
                      imageAdd: menuImages[1],
                      menuName: menuNames[1],
                    ),
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      selectedItems[2] = true;
                    },
                    child: MenuCardClass(
                      imageAdd: menuImages[2],
                      menuName: menuNames[2],
                    ),
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      selectedItems[3] = true;
                    },
                    child: MenuCardClass(
                      imageAdd: menuImages[3],
                      menuName: menuNames[3],
                    ),
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      selectedItems[4] = true;
                    },
                    child: MenuCardClass(
                      imageAdd: menuImages[4],
                      menuName: menuNames[4],
                    ),
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      selectedItems[5] = true;
                    },
                    child: MenuCardClass(
                      imageAdd: menuImages[5],
                      menuName: menuNames[5],
                    ),
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      selectedItems[6] = true;
                    },
                    child: MenuCardClass(
                      imageAdd: menuImages[6],
                      menuName: menuNames[6],
                    ),
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      selectedItems[7] = true;
                    },
                    child: MenuCardClass(
                      imageAdd: menuImages[7],
                      menuName: menuNames[7],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
