import 'package:flutter/material.dart';
import 'package:gelartikar/detail_page/booking_page.dart';
import 'package:gelartikar/detail_page/chat_page.dart';
import 'package:gelartikar/detail_page/user_page.dart';
import 'package:gelartikar/home_page/_homepage.dart';

class ButtonNavigation extends StatefulWidget {
  const ButtonNavigation({ Key? key }) : super(key: key);

  @override
  _ButtonNavigationState createState() => _ButtonNavigationState();
}

class _ButtonNavigationState extends State<ButtonNavigation> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      if(index == 1){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return ChatPage();
          }));
      } else if(index == 2){
          Navigator.push(context, MaterialPageRoute(builder: (context){ 
            return BokingPage();
          }));
      } else if(index == 3){
        Navigator.push(context, MaterialPageRoute(builder: (context){ 
            return UserPage();
        }));
      } else {
         Navigator.push(context, MaterialPageRoute(builder: (context){ 
            return HomePage();
          }));
      }
     
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chat',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timelapse),
            label: 'Booking',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Settings',
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.7),
        ),
        onTap: _onItemTapped,
      );
  }
}