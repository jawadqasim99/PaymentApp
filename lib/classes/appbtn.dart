import 'package:flutter/material.dart';
import 'package:paymentapp/colors.dart';

class AppBtn extends StatelessWidget {
  final double? fontsize;
  final IconData? icon;
  final Function()? ontap;
  final Color? iconcolor;
  final Color? backgroundcolor;
  final Color? textcolor;
  final String? text;

  AppBtn(
      {super.key,
      this.fontsize = 20,
      this.icon,
      this.iconcolor = Colors.white,
      this.ontap,
      this.backgroundcolor = AppColors.mainColor,
      this.text,
      this.textcolor = AppColors.mainColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: backgroundcolor, borderRadius: BorderRadius.circular(20)),
          child: Icon(
            icon,
            size: 30,
            color: iconcolor,
          ),
        ),
        text != null
            ? Text(
                text!,
                style: TextStyle(fontSize: 14, color: textcolor),
              )
            : Container()
      ]),
    );
  }
}
