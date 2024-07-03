import 'package:checkout_payment/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: const Text(
          "My Cart",
          textAlign: TextAlign.center,
          style: Styles.style25
        ),
        leading: Center(child: SvgPicture.asset("assets/images/arrow.svg")),
      ),
    );
  }
}
