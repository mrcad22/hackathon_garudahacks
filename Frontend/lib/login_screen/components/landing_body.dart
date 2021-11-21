import 'package:flutter/material.dart';
import 'package:gelarlapak/global_components/round_button.dart';
import '../_login.dart';
import '_background.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelarlapak/_constant.dart';

class LandingBody extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/landing.svg', width: size.height * 0.3, height: size.height * 0.4),
            RoundButton(
              width: size.width * 0.9,
              padding: 20,
              pressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return LoginScreen();
                }))
              },
              text: 'Login',
              innerpadding: 17),
            RoundButton(
              width: size.width * 0.9,
              padding: 0,
              pressed: () => {},
              text: 'Daftar',
              color: kBgSecondaryColor,
              innerpadding: 17)
          ]
        )
    );
  }
}
