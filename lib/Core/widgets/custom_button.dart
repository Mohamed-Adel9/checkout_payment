import 'package:checkout_payment/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title
  });

   final void Function()? onPressed;
   final String title ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: const Color.fromRGBO(52, 168, 83, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: Styles.style22
          ,
        ),
      ),
    );
  }
}
