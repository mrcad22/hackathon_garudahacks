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

// Container(
//         width: size.width, 
//         height: 50, 
//         decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end:
//               Alignment(1, 1), // 10% of the width, so there are ten blinds.
//           colors: <Color>[
//             Color(0xFF4978C0),
//             Color(0xCC4978C0),
//             Color(0xFF4978C0),
//           ], // red to yellow
//           tileMode: TileMode.repeated, // repeats the gradient over the canvas
//         ),
//       ),
//         child: Expanded(child: Row(children: [
//           IconButton(onPressed: null, icon: Icon(Icons.home)),
//           IconButton(onPressed: null, icon: Icon(Icons.home)),
//           IconButton(onPressed: null, icon: Icon(Icons.home)),
//           IconButton(onPressed: null, icon: Icon(Icons.home)),
//           IconButton(onPressed: null, icon: Icon(Icons.home)),
//         ],)) ,
//       ),