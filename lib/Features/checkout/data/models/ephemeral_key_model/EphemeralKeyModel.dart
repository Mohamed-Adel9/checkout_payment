import 'package:checkout_payment/Features/checkout/data/models/ephemeral_key_model/associated_objects.dart';

class EphemeralKeyModel {
  EphemeralKeyModel({
      this.id, 
      this.object, 
      this.associatedObjects, 
      this.created, 
      this.expires, 
      this.livemode, 
      this.secret,});

  EphemeralKeyModel.fromJson(dynamic json) {
    id = json['id'];
    object = json['object'];
    if (json['associated_objects'] != null) {
      associatedObjects = [];
      json['associated_objects'].forEach((v) {
        associatedObjects?.add(AssociatedObjects.fromJson(v));
      });
    }
    created = json['created'];
    expires = json['expires'];
    livemode = json['livemode'];
    secret = json['secret'];
  }
  String? id;
  String? object;
  List<AssociatedObjects>? associatedObjects;
  num? created;
  num? expires;
  bool? livemode;
  String? secret;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['object'] = object;
    if (associatedObjects != null) {
      map['associated_objects'] = associatedObjects?.map((v) => v.toJson()).toList();
    }
    map['created'] = created;
    map['expires'] = expires;
    map['livemode'] = livemode;
    map['secret'] = secret;
    return map;
  }

}