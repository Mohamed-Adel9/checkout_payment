import 'package:checkout_payment/Features/checkout/presentation/views/widgets/custom_check_icon.dart';
import 'package:checkout_payment/Features/checkout/presentation/views/widgets/dashed_line.dart';
import 'package:checkout_payment/Features/checkout/presentation/views/widgets/thank_you_card.dart';
import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCard(),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * .23,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * .23,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
              right: 30,
              left: 30,
              bottom: MediaQuery.sizeOf(context).height * .23 + 20,
              child: const DashedLine()),
          const Positioned(
            right: 0,
            left: 0,
            top: -50,
            child: CustomCheckIcon(),
          ),
        ],
      ),
    );
  }
}