import 'package:intl/intl.dart';

class User {
  final int? id;
  final String? username;
  final String? email;
  final DateTime? created;
  final DateTime? updated;

  User({
    this.id,
    this.username,
    this.email,
    this.created,
    this.updated
  });

  // 통신을 위해 json-like 문자열을 Dart 오브젝트로 변경
  User.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      username = json['username'],
      email = json['email'],
      created = DateFormat('yyyy-mm-dd').parse(json['created']),
      updated = DateFormat('yyyy-mm-dd').parse(json['updated'])
  ;
}