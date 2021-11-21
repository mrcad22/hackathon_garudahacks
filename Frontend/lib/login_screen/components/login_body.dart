import 'package:flutter/material.dart';
import 'package:gelarlapak/global_components/round_button.dart';
import 'package:gelarlapak/global_components/text_field.dart';
import 'package:gelarlapak/home_page/_homepage.dart';
import 'package:gelarlapak/login_screen/_landing.dart';
import '_background.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelarlapak/_constant.dart';

class LoginBody extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/login.svg', height: size.height * 0.28),
            FormTextField(
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    border: InputBorder.none,
                    hintText: "Email"
                ),
              ),
            ),
            FormTextField(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    border: InputBorder.none,
                    hintText: "Password"
                ),
              ),
            ),
            RoundButton(
              width: size.width * 0.9,
              padding: 10,
              text: 'LOGIN',
              pressed : () => {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HomePage();
                }))
              },
              innerpadding: 15
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum punya akun ? ", style: TextStyle(color: kTextColor)),
                Text("Daftar Sekarang", style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold))
              ],
            )
          ]
        )
    );
  }
}
