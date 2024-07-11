import 'package:checkout_payment/Core/widgets/custom_button.dart';
import 'package:checkout_payment/Features/checkout/data/repos/checkout_repo_impelmentation.dart';
import 'package:checkout_payment/Features/checkout/presentation/manager/cubit/payment_cubit.dart';
import 'package:checkout_payment/Features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:checkout_payment/Features/checkout/presentation/views/widgets/payment_method_bottom_sheet.dart';
import 'package:checkout_payment/Features/checkout/presentation/views/widgets/total_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Expanded(child: Image.asset("assets/images/pasket.png")),
          const SizedBox(
            height: 20,
          ),
          const OrderInfoItem(title: "Order Subtotal", value: r"$42.97"),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(title: "Discount", value: r"$0"),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(title: "Shipping", value: r"$8"),
          const Divider(
            endIndent: 15,
            indent: 15,
            height: 34,
            thickness: 2,
            color: Color(0xffC7C7C7),
          ),
          const TotalPrice(title: "Total", value: r"$50.97"),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => BlocProvider(
                  create: (context) =>
                      PaymentCubit(CheckoutRepoImpelmentation()),
                  child: const PaymentMethodBottomSheet(),
                ),
              );
            },
            title: "Complete Payment",
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
