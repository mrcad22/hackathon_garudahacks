import 'package:flutter/material.dart';
import 'package:gelartikar/_constant.dart';

class RoundButton extends StatelessWidget{
  final double width, innerpadding, padding;
  final VoidCallback pressed;
  final Color color, txtColor;
  final String text;

  const RoundButton({
    key,
    required this.width,
    required this.innerpadding,
    required this.pressed,
    required this.text,
    required this.padding,
    this.color = kBgColor,
    this.txtColor = const Color(0xFFFFFFFF),
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding),
      child: Container(
          width: width,
          child: ElevatedButton(
            onPressed: pressed,
            child: Padding(
              padding: EdgeInsets.all(innerpadding),
              child: Text(text, style: TextStyle(color: txtColor)
              ),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
            ),
          )
      ),
    );
  }
}
