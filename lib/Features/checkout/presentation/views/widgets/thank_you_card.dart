import 'package:checkout_payment/Core/utils/styles.dart';
import 'package:checkout_payment/Features/checkout/presentation/views/widgets/custom_card_info.dart';
import 'package:checkout_payment/Features/checkout/presentation/views/widgets/custom_payment_info.dart';
import 'package:checkout_payment/Features/checkout/presentation/views/widgets/total_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50 , left: 16, right: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffEDEDED),
      ),
      child: Column(
        children: [
          const Text(
            "Thank you!",
            textAlign: TextAlign.center,
            style: Styles.style25,
          ),
          Text(
            "Your transaction was successful",
            textAlign: TextAlign.center,
            style: Styles.style20,
          ),
          const SizedBox(
            height: 40,
          ),
          const CustomPaymentInfo(
            title: "Date",
            data: "01/24/2023",
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomPaymentInfo(
            title: "Time",
            data: "10:15 AM",
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomPaymentInfo(
            title: "To",
            data: "Sam Louis",
          ),
          const Divider(
            height: 60,
            thickness: 2,
            color: Color.fromRGBO(199, 199, 199, 1),
          ),
          const TotalPrice(title: "Total", value: r"50.97$"),
          const SizedBox(
            height: 40,
          ),
          const CustomCardInfo(),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset("assets/images/voucher.svg"),
              Container(
                width: 120,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.green, width: 1),
                ),
                child: Center(
                  child: Text(
                    "PAID",
                    style: Styles.style24.copyWith(
                      color: const Color.fromRGBO(52, 182, 83, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: ((MediaQuery.sizeOf(context).height * .23 + 20)/2)-30),
        ],
      ),
    );
  }
}
