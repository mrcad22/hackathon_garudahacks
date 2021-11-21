import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gelartikar/_constant.dart';
import 'package:gelartikar/detail_page/body.dart';

class BokingPage extends StatelessWidget{
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
      body: Container(
        alignment: Alignment.center, 
        width: size.width, 
        height: size.height, 
        child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,children: [
          Image.asset('assets/icons/boking.png', width: size.height * 0.3, height: size.height * 0.4),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Kamu Belum Booking Tempat Di Event Manapun, Coba Booking Sekarang", 
            style: TextStyle(fontSize:15, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.4))),
          )
        ],),
    ));
  }
}