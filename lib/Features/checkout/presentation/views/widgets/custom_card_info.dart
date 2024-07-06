import 'package:checkout_payment/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCardInfo extends StatelessWidget {
  const CustomCardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        children: [
          SvgPicture.asset("assets/images/masterCard.svg"),
          const SizedBox(width: 20,),
          const Text.rich(
              TextSpan(
                  children: [
                    TextSpan(
                      text: "Credit Card ",
                      style: Styles.styleBold18,
                    ),
                    TextSpan(
                        text: "Mastercard **78",
                        style: Styles.style18
                    )
                  ]
              )

          ),
        ],
      ),
    );
  }
}
