import 'package:checkout_payment/Features/checkout/presentation/views/widgets/custom_button_bloc_consumer.dart';
import 'package:checkout_payment/Features/checkout/presentation/views/widgets/payment_methods_list_view.dart';
import 'package:flutter/material.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10,),
          PaymentMethodsListView(),
          SizedBox(height: 20,),
          CustomButtonBlocConsumer()
        ],
      ),
    );
  }
}


