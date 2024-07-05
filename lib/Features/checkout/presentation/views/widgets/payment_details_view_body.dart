import 'package:checkout_payment/Features/checkout/presentation/views/widgets/costume_credit_card.dart';
import 'package:checkout_payment/Features/checkout/presentation/views/widgets/payment_methods_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PaymentMethodsListView(),
          const CostumeCreditCard(),
        ],
      ),
    );
  }
}
