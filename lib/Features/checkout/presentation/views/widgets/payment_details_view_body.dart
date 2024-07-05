import 'package:checkout_payment/Features/checkout/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              PaymentMethodItem(isActive: true, image: 'assets/images/cart.svg',),
              SizedBox(width: 15,),
              PaymentMethodItem(isActive: false, image: 'assets/images/paypal.svg',),
            ],
          ),
        ],
      ),
    );
  }
}

