class AmountDetails {
  dynamic tip;

  AmountDetails({
    this.tip,
  });

  AmountDetails.fromJson(dynamic json) {
    tip = json['tip'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tip'] = tip;
    return map;
  }
}
