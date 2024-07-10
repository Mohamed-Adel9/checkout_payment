import 'package:checkout_payment/Core/utils/api_keys.dart';
import 'package:checkout_payment/Core/utils/api_services.dart';
import 'package:checkout_payment/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment/Features/checkout/data/models/payment_intent_models/payment_intent_model.dart';

class StripeServices {
//paymentIntentObject =create Payment Intent (Amount - Currency )

  ApiServices apiServices = ApiServices();
  String apiKey = 'https://api.stripe.com/v1/payment_intents';
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiServices.post(
      body: paymentIntentInputModel.toJson(),
      url: apiKey,
      token: ApiKeys.secretKey,
    );

    PaymentIntentModel paymentIntentModel = PaymentIntentModel.fromJson(response.data);

    return paymentIntentModel;
  }

// init payment sheet (paymentIntentClientSecrete)
//PresentPaymentSheet()
}
