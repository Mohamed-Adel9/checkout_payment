class PaymentIntentInputModel {
  final String amount;
  final String currency;

  PaymentIntentInputModel(this.amount, this.currency);

  Map<String, dynamic> toJson() {
    return {
      "amount": amount,
      "currency": currency,
    };
  }


}
