import 'package:checkout_payment/Features/checkout/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentMethodsListView extends StatefulWidget {
  PaymentMethodsListView({super.key,});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> images =[
    "assets/images/cart.svg",
    "assets/images/paypal.svg",
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: (){
                activeIndex =index ;
                setState(() {

                });
              },
              child: PaymentMethodItem(
                isActive: activeIndex == index,
                image: images[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
