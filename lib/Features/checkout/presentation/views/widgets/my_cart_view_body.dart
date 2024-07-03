import 'package:checkout_payment/Core/utils/styles.dart';
import 'package:checkout_payment/Features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:checkout_payment/Features/checkout/presentation/views/widgets/total_price.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(height: 18,),
          Image.asset("assets/images/pasket.png"),
          const SizedBox(height: 20,),
          const OrderInfoItem(title: "Order Subtotal", value: r"$42.97"),
          const SizedBox(height: 3,),
          const OrderInfoItem(title: "Discount", value: r"$0"),
          const SizedBox(height: 3,),
          const OrderInfoItem(title: "Shipping", value: r"$8"),
          const Divider(
            endIndent: 15,
            indent: 15,
            height: 34,
            thickness: 2,
            color: Color(0xffC7C7C7),
          ),
          const TotalPrice(title: "Total", value: r"$50.97")

        ],
      ),
    );
  }
}

