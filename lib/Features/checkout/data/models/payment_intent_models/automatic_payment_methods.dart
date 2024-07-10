class AutomaticPaymentMethods {
  bool? enabled;

  AutomaticPaymentMethods({
    this.enabled,
  });

  AutomaticPaymentMethods.fromJson(dynamic json) {
    enabled = json['enabled'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }
}
