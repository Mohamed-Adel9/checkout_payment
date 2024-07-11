import 'package:checkout_payment/Core/errors/failures.dart';
import 'package:checkout_payment/Core/utils/stripe_services.dart';
import 'package:checkout_payment/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment/Features/checkout/data/repos/checkout_repo.dart';
import 'package:dartz/dartz.dart';

class CheckoutRepoImpelmentation extends CheckoutRepo {
  StripeServices stripeServices = StripeServices();

  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeServices.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);

      return right(null);
    } on Exception catch (e) {
      return left(ServerError(e.toString()));
    }
  }
}
