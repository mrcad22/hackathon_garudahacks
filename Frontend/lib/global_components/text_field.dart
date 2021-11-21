import 'package:flutter/material.dart';
import 'package:gelarlapak/_constant.dart';

class FormTextField extends StatelessWidget{
  final Widget child;
  const FormTextField({
    key,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
      width: size.width * 0.9,
      decoration: BoxDecoration(color: kBgHoverColor, borderRadius: BorderRadius.circular(20)),
      child : child
    );
  }
}
