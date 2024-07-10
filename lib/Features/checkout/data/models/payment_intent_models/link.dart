// persistent_token : null
class Link {
  dynamic persistentToken;

  Link({
    this.persistentToken,
  });

  Link.fromJson(dynamic json) {
    persistentToken = json['persistent_token'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['persistent_token'] = persistentToken;
    return map;
  }
}
