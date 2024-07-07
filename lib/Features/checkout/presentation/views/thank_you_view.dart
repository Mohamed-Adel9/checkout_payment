import 'package:checkout_payment/Core/widgets/custom_appbar.dart';
import 'package:checkout_payment/Features/checkout/presentation/views/widgets/thank_you_view_body.dart';
import 'package:flutter/material.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.white,
      body: Transform.translate(offset: const Offset(0, -25),child: const ThankYouViewBody()),
    );
  }
}
