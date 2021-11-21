import 'package:flutter/material.dart';
import 'package:gelarlapak/_constant.dart';
import 'package:gelarlapak/global_components/bottom_navigation.dart';
import 'package:gelarlapak/home_page/_body.dart';

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