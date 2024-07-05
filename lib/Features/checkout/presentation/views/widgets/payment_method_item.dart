import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    this.isActive = false,
    required this.image,
  });

  final bool isActive;
  final String image ;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: 102,
      height: 63,
      decoration: ShapeDecoration(
        color: isActive ? const Color.fromRGBO(52, 168, 83, 1) : Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color:
                isActive ? const Color.fromRGBO(52, 168, 83, 1) : Colors.white,
            blurRadius: 4,
            offset: const Offset(0, 0),
          )
        ],
      ),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                color: isActive
                    ? const Color.fromRGBO(52, 168, 83, 1)
                    : Colors.grey,
              )),
        ),
        child: Center(
            child: SvgPicture.asset(
          image,
          height: 31,
        )),
      ),
    );
  }
}
