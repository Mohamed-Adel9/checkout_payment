import 'package:checkout_payment/Core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment();
}
