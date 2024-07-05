import 'package:checkout_payment/Features/checkout/presentation/views/widgets/payment_methods_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          PaymentMethodsListView(),
        ],
      ),
    );
  }
}



