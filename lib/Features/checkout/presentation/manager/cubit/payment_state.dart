part of 'payment_cubit.dart';

abstract class PaymentState {}

final class PaymentInitial extends PaymentState {}
final class PaymentLoading extends PaymentState {}
final class PaymentSuccess extends PaymentState {}
final class PaymentFailure extends PaymentState {
  final  String error ;

  PaymentFailure(this.error);
}
