import 'package:flutter/material.dart';
import 'package:paymentapp/colors.dart';

class LargeBtn extends StatelessWidget {
  final String? textbtn;
  final Color? textClr;
  final Color? background;
  final Function()? onTop;
  final bool? isborder;

  const LargeBtn(
      {super.key,
      this.textbtn,
      this.background = AppColors.mainColor,
      this.isborder = false,
      this.onTop,
      this.textClr});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTop,
        child: Container(
          margin: const EdgeInsets.only(left: 30, right: 30),
          height: 60,
          width: MediaQuery.of(context).size.width - 60,
          decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: AppColors.mainColor, width: 2)),
          child: Center(
            child: Text(
              textbtn!,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
