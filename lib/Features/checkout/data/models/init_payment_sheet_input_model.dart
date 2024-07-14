class InitPaymentSheetInputModel {
  final String paymentIntentClientSecret;
  final String customerId;
  final String ephemeralKeySecrete;

  InitPaymentSheetInputModel(
      {required this.paymentIntentClientSecret,
      required this.customerId,
      required this.ephemeralKeySecrete});
}
