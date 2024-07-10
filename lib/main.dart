import 'package:checkout_payment/Features/checkout/presentation/views/my_cart_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CheckOut Payment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyCartView(),
    );
  }
}


