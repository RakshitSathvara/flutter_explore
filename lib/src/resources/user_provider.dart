import 'dart:convert';

import 'package:flutter_explore/src/models/user_model.dart';
import 'package:http/http.dart' as http;

class UserProvider {
  final apiUrl = 'http://apidev.mycbos.com/integration/rs/GetBusinessPartner';
  Map auth = {
    "baseauthenticationrequest": {
      "accesskey": "0E54E3C5-8F49-4AA7-96D8-EBDE8AE316DF",
      "accesstoken":
          "RTNBODQzMzYtM0I3Ny00ODNELTg3REEtOUVENEI0NjVCQzQ2OzsxNTY4MjgxODI1OTQz"
    }
  };

  Future<User> getUserList() async {
    print(auth);
    final response = await http.post(apiUrl, body: auth.toString());
    print(response.body.toString());
    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}
