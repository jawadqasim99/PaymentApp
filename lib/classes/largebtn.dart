import 'package:flutter/material.dart';
import 'package:paymentapp/colors.dart';

class LargeBtn extends StatelessWidget {
  final String? textbtn;
  // final Color? textClr;
  // final Color? background;
  // final Function()? onTop;
  // final bool? isborder;

  LargeBtn({
    super.key,
    this.textbtn,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        child: Container(
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: AppColors.mainColor, width: 2)),
      child: Text(
        textbtn!,
        style: TextStyle(
            color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
      ),
    ));
  }
}
