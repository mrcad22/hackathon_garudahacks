import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gelartikar/_constant.dart';
import 'package:gelartikar/detail_page/detail_page.dart';

class CardEvents extends StatelessWidget {
  final Size size;
  final String title, desc, image;
  const CardEvents ({ Key? key, required this.size, required this.title, required this.desc, required this.image }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context){
        return DetailPage(image: image, title: title);
      })),
      child: Card(
        child: Container(
          width: size.width /2 - 10,
          child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image, height: 180, 
            width: size.width / 2 - 10, fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(width: size.width /2 - 20 ,
                child: 
                Text("$title", style: TextStyle(color: Colors.black), overflow: TextOverflow.ellipsis)),
                Text(desc, style: TextStyle(color: kTextColor.withRed(200)))
              ],)),
            
          ],
          ),
        ),
      ),
    );
  }
}