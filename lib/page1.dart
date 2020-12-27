import 'package:flutter/material.dart';
import 'package:test_help/page2.dart';
import 'info_p1.dart';


class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page1'),actions: [RaisedButton(child: Text('To P2'),onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page2()));})],),
      body: Container(child: SingleChildScrollView(child: Column(
        children: [
          for (var foodItem in foodItemList.fooddItems)
            ItemContainer(foodItem: foodItem),
        ],
      ))
    ),);
  }
}

class ItemContainer extends StatelessWidget {

  final FoodgItem foodItem;
  ItemContainer({this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Items(
      itemTitle: foodItem.title,
      itemBody : foodItem.body,
      itemId: foodItem.id,
      itemUserId: foodItem.uesrId,
    );
  }
}


class Items extends StatelessWidget {

  final String itemTitle;
  final String itemBody;
  final int itemId;
  final int itemUserId;

  Items({
    @required this.itemTitle,
    @required this.itemBody,
    @required this.itemId,
    @required this.itemUserId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [
      Text(itemTitle),
      Text(itemBody),
      Text(itemUserId.toString()),
        Text(itemId.toString()),
        Container(height: 2,width: 900,color: Colors.black,)
      ],),
    );
  }
}

