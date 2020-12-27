import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final title;
  final id;
  final userId;
  final body;
  Info({this.title,this.id,this.userId,this.body});

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [
      Text('Title:::::: $title'),
      Text('ID::::: $id'),
      Text('Body::::: $body'),
      Text('UserId:::::: $userId'),
      Container(height: 2,width: 900,color: Colors.black,)
    ],),);
  }
}