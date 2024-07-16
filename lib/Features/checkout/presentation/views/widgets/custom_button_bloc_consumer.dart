import 'dart:developer';

import 'package:checkout_payment/Core/utils/api_keys.dart';
import 'package:checkout_payment/Core/widgets/custom_button.dart';
import 'package:checkout_payment/Features/checkout/data/models/paypal_models/AmountModel.dart';
import 'package:checkout_payment/Features/checkout/data/models/paypal_models/ItemsListModel.dart';
import 'package:checkout_payment/Features/checkout/presentation/manager/cubit/payment_cubit.dart';
import 'package:checkout_payment/Features/checkout/presentation/views/thank_you_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const ThankYouView(),
            ),
          );
        }
        if (state is PaymentFailure) {
          Navigator.of(context).pop();
          SnackBar snackBar = SnackBar(
            content: Text(state.error),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
          onPressed: () {
            // for paypal


            var paypalDetails = getPaypalDetails();
            excutePaypalMethod(context, paypalDetails);


            // for stripe

            // PaymentIntentInputModel paymentIntentInputModel =
            //     PaymentIntentInputModel(amount: "3000", currency: "usd",customerId: "cus_QT3ABoIlkDXqvq");
            // BlocProvider.of<PaymentCubit>(context)
            //     .makePayment(paymentIntentInputModel: paymentIntentInputModel);
          },
          isLoading: state is PaymentLoading ? true : false,
          title: "Continue",
        );
      },
    );
  }

  void excutePaypalMethod(BuildContext context, ({Map<String, dynamic> amountJson, ItemsListModel itemList}) paypalDetails) {
      Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => PaypalCheckoutView(
        sandboxMode: true,
        clientId: ApiKeys.paypalClientId,
        secretKey:ApiKeys.paypalSecretKey,
        transactions: [
          {
            "amount": paypalDetails.amountJson,
            "description": "The payment transaction description.",
            "item_list": paypalDetails.itemList,
          }
        ],
        note: "Contact us for any questions on your order.",
        onSuccess: (Map params) async {
          log("onSuccess: $params");
          Navigator.pop(context);
        },
        onError: (error) {
          log("onError: $error");
          Navigator.pop(context);
        },
        onCancel: () {
          print('cancelled:');
          Navigator.pop(context);
        },
      ),
    ));
  }
  ({Map<String, dynamic> amountJson, ItemsListModel itemList}) getPaypalDetails (){
    // amount instance
    var amount = AmountModel(
      currency: "USD",
      total: "100",
      details: Details(
          shipping: "0",
          shippingDiscount: 0,
          subtotal: "100"
      ),
    );
    Map<String, dynamic> amountJson = amount.toJson();

    //itemsList instance
    List<OrderItemsModel> orders = [
      OrderItemsModel(
          currency: "USD",
          name: "apple",
          price: "4",
          quantity: 10
      ),
      OrderItemsModel(
          currency: "USD",
          name: "banana",
          price: "5",
          quantity: 12
      ),
    ];
    var itemList = ItemsListModel(
        items: orders
    );
    return (amountJson : amountJson , itemList:itemList);
  }
}
