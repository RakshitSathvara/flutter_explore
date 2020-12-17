import 'package:flutter/material.dart';
import 'package:flutter_explore/src/ui/user_list.dart';

class UserApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: UserList(),
      ),
    );
  }
}
