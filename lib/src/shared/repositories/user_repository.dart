import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:picpay_copy/src/shared/models/users.dart';

class UserRepository {
  Future<List<User>> fetchUsers() async {
    final response =
        await http.get('http://careers.picpay.com/tests/mobdev/users');
    if (response.statusCode == 200) {
      final lista = json.decode(response.body);
      final users = lista.map<User>((user) => User.fromJson(user)).toList();
      return users;
    } 
    return null;
  }

  

}
