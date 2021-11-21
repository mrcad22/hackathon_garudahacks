import 'package:flutter/material.dart';
import 'package:gelartikar/_constant.dart';
import 'package:gelartikar/detail_page/body.dart';

class UserPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: null,
            ),
          ),
      body: null,
    );
  }
}