import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


var mnlist=[{
  'title':'title2',
  'uesrId':2000,
  'id':2,
  'body':'body2',
}];


FoodItemList foodItemList = FoodItemList(
  fooddItems: [
    FoodgItem(
      id: 1,
      title: "title1",
      uesrId: 1000,
      body:'body1'
    ),
    FoodgItem(
      title:  mnlist[0]['title'],
      id: mnlist[0]['id'],
      body: mnlist[0]['body'],
      uesrId: mnlist[0]['uesrId'],
    ),
    FoodgItem(//اريد محتويات هاي الماب نفسها الي بالصفحه الثانيه يعني من النت
      id: 3,
      title: "title3",
      uesrId: 3000,
      body:'body3'
    ),
  ],
);

class FoodItemList {
  List<FoodgItem> fooddItems;
  FoodItemList({@required this.fooddItems});
}
class FoodgItem {
  int id;
  String title;
  int uesrId;
  String body;
  FoodgItem({
    @required this.id,
    @required this.title,
    @required this.body,
    @required this.uesrId,
  });
}