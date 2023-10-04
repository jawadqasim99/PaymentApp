import 'package:flutter/material.dart';

class PaymentBill extends StatelessWidget {
  const PaymentBill({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/paymentbk.png"))),
      ),
    );
  }
}
