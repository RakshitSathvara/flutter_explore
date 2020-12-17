import 'package:flutter_explore/src/models/user_model.dart';
import 'package:flutter_explore/src/resources/user_%20repository.dart';
import 'package:rxdart/subjects.dart';

class UserBloc {
  final _userRepository = UserRepository();
  final _userFetcher = PublishSubject<User>();

  Stream<User> get allUser => _userFetcher.stream;

  fetchAllUsers() async {
    User user = await _userRepository.fetchAllUser();
    _userFetcher.sink.add(user);
  }

  dispose() {
    _userFetcher.close();
  }
}

final bloc = UserBloc();
