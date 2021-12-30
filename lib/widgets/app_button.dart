import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit_trip_tips_app/constants/colors.dart';

import 'app_text.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  final double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool? isIcon;

  AppButton({Key? key, this.isIcon=false,this.text="hi",this.icon,required this.color, required this.backgroundColor, required this.size, required this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration : BoxDecoration(
          border: Border.all(
            color : borderColor,
            width:1.0
          ),
            borderRadius : BorderRadius.circular(15),
            color : backgroundColor
        ),
      child : Center(child: isIcon==false?AppText(text: text!,color:color):Icon(icon,color: color,))
    );
  }
}
