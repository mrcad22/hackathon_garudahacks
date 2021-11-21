import 'package:flutter/material.dart';
import 'package:gelartikar/_constant.dart';
import 'package:gelartikar/global_components/bottom_navigation.dart';
import 'package:gelartikar/home_page/_body.dart';

class HomePage extends StatelessWidget{
  var currentIndex = 0;

  AppBar buildAppBar(){
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.white),
        onPressed: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: ButtonNavigation()
    );
  }
}