import 'package:checkout_payment/Core/utils/api_keys.dart';
import 'package:checkout_payment/Core/utils/api_services.dart';
import 'package:checkout_payment/Features/checkout/data/models/ephemeral_key_model/EphemeralKeyModel.dart';
import 'package:checkout_payment/Features/checkout/data/models/init_payment_sheet_input_model.dart';
import 'package:checkout_payment/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment/Features/checkout/data/models/payment_intent_models/payment_intent_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeServices {
  ApiServices apiServices = ApiServices();
  String baseUrl = 'https://api.stripe.com/v1';

//paymentIntentObject = create Payment Intent (Amount - Currency )
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiServices.post(
      body: paymentIntentInputModel.toJson(),
      contentType: Headers.formUrlEncodedContentType,
      url: "$baseUrl/payment_intents",
      token: ApiKeys().secretKey,
    );

    PaymentIntentModel paymentIntentModel =
        PaymentIntentModel.fromJson(response.data);

    return paymentIntentModel;
  }

// init payment sheet (paymentIntentClientSecrete)
  Future initPaymentSheet(
      {required InitPaymentSheetInputModel initPaymentSheetInputModel}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            paymentIntentClientSecret:
                initPaymentSheetInputModel.paymentIntentClientSecret,
            customerId: initPaymentSheetInputModel.customerId,
            customerEphemeralKeySecret:
                initPaymentSheetInputModel.ephemeralKeySecrete,
            merchantDisplayName: "mohamed Adel"));
  }

//PresentPaymentSheet()
  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  // one step to make all the steps
  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    var ephemeralKeyModel = await createEphemeralKey(
        customerId: paymentIntentInputModel.customerId);
    var initPaymentSheetInputModel = InitPaymentSheetInputModel(
        paymentIntentClientSecret: paymentIntentModel.clientSecret!,
        customerId: paymentIntentInputModel.customerId,
        ephemeralKeySecrete: ephemeralKeyModel.secret!);
    await initPaymentSheet(
        initPaymentSheetInputModel: initPaymentSheetInputModel);
    await displayPaymentSheet();
  }

  // createEphemeralKey (customerID)
  Future<EphemeralKeyModel> createEphemeralKey(
      {required String customerId}) async {
    var response = await apiServices.post(
      body: {"customer": customerId},
      contentType: Headers.formUrlEncodedContentType,
      url: "$baseUrl/ephemeral_keys",
      headers: {
        "Authorization": "Bearer ${ApiKeys().secretKey}",
        "Stripe-Version": "2024-06-20"
      },
      token: ApiKeys().secretKey,
    );

    EphemeralKeyModel ephemeralKeyModel =
        EphemeralKeyModel.fromJson(response.data);

    return ephemeralKeyModel;
  }
}
