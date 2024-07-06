import 'package:checkout_payment/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomPaymentInfo extends StatelessWidget {
  const CustomPaymentInfo({super.key, required this.title, required this.data});
  final String title , data ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: Styles.style18,),
        Text(data,style: Styles.styleBold18,),
      ],
    );
  }
}
