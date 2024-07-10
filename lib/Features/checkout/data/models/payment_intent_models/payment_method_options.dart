// card : {"installments":null,"mandate_options":null,"network":null,"request_three_d_secure":"automatic"}
// link : {"persistent_token":null}

import 'package:checkout_payment/Features/checkout/data/models/payment_intent_models/card.dart';
import 'package:checkout_payment/Features/checkout/data/models/payment_intent_models/link.dart';

class PaymentMethodOptions {
  Card? card;
  Link? link;

  PaymentMethodOptions({
    this.card,
    this.link,
  });

  PaymentMethodOptions.fromJson(dynamic json) {
    card = json['card'] != null ? Card.fromJson(json['card']) : null;
    link = json['link'] != null ? Link.fromJson(json['link']) : null;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (card != null) {
      map['card'] = card?.toJson();
    }
    if (link != null) {
      map['link'] = link?.toJson();
    }
    return map;
  }

}

