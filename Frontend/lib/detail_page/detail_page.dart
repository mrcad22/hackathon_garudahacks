import 'package:flutter/material.dart';
import 'package:gelartikar/_constant.dart';
import 'package:gelartikar/detail_page/body.dart';

class DetailPage extends StatelessWidget{
  final String image, title;

  const DetailPage({Key? key, required this.image, required this.title}) : super(key: key);
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
      body: Body(image: image, title: title),
    );
  }
}