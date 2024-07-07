import 'package:checkout_payment/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar({ final String? title ,void Function()? onTap}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(title?? "", textAlign: TextAlign.center, style: Styles.style25),
    leading: GestureDetector(
      onTap: onTap,
      child: Center(
        child: SvgPicture.asset("assets/images/arrow.svg"),
      ),
    ),
  );
}
