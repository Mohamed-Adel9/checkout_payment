import 'package:checkout_payment/Core/widgets/custom_button.dart';
import 'package:checkout_payment/Features/checkout/presentation/views/widgets/costume_credit_card.dart';
import 'package:checkout_payment/Features/checkout/presentation/views/widgets/payment_methods_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: PaymentMethodsListView(),
          ),
        ),
        const SliverToBoxAdapter(
          child: CostumeCreditCard(),
        ),
        SliverFillRemaining(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 16.0,
                left: 16,
                right: 16,
              ),
              child: CustomButton(
                onPressed: () {},
                title: "Pay",
              ),
            ),
          ),
        )
      ],
    );
  }
}
