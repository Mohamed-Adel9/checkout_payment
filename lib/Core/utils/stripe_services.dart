import 'package:checkout_payment/Core/utils/api_keys.dart';
import 'package:checkout_payment/Core/utils/api_services.dart';
import 'package:checkout_payment/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment/Features/checkout/data/models/payment_intent_models/payment_intent_model.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeServices {
  ApiServices apiServices = ApiServices();
  String apiKey = 'https://api.stripe.com/v1/payment_intents';

//paymentIntentObject =create Payment Intent (Amount - Currency )
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiServices.post(
      body: paymentIntentInputModel.toJson(),
      url: apiKey,
      token: ApiKeys().secretKey,
    );

    PaymentIntentModel paymentIntentModel =
        PaymentIntentModel.fromJson(response.data);

    return paymentIntentModel;
  }

// init payment sheet (paymentIntentClientSecrete)
  Future initPaymentSheet({required String paymentIntentClientSecret}) async {
    Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            paymentIntentClientSecret: paymentIntentClientSecret,
            merchantDisplayName: "mohamed Adel"));
  }

//PresentPaymentSheet()
  Future displayPaymentSheet() async {
    Stripe.instance.presentPaymentSheet();
  }


  // one step to make all the steps 
  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    await initPaymentSheet(
        paymentIntentClientSecret: paymentIntentModel.clientSecret!);
    await displayPaymentSheet();
  }
}

