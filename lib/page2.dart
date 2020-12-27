import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'info_p2.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}
class _Page2State extends State<Page2> {

  Future getd() async{
    var url = 'https://jsonplaceholder.typicode.com/posts';
    var masenger = await http.get(url);
    var mormaltext= jsonDecode(masenger.body);
    return mormaltext;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: FutureBuilder(
        future: getd(),
        builder: (BuildContext context,AsyncSnapshot snapp){
          if(snapp.hasData) {
            return ListView.builder(itemCount: 1 , itemBuilder: (context,[i]){
              return
                Info(title: snapp.data[0]['title'], body: snapp.data[0]['body'], id: snapp.data[0]['id'].toString(), userId: snapp.data[0]['userId'].toString(),);
            });
          }else{
            return  Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
