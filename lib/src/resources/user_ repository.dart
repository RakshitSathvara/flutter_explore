import 'package:flutter_explore/src/models/user_model.dart';
import 'package:flutter_explore/src/resources/user_provider.dart';

class UserRepository {
  final userProvider = UserProvider();

  Future<User> fetchAllUser() => userProvider.getUserList();
}
