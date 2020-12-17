import 'package:flutter/material.dart';
import 'package:flutter_explore/src/bloc/user_bloc.dart';
import 'package:flutter_explore/src/models/user_model.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bloc.fetchAllUsers();
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Pattern"),
      ),
      body: StreamBuilder(
        stream: bloc.allUser,
        builder: (context, AsyncSnapshot<User> snapshot) {
          if (snapshot.hasData) {
            return buildUserList(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Widget buildUserList(AsyncSnapshot<User> snapshot) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Center(
          child: Container(
            child: Text(snapshot.data.result[index].name),
          ),
        );
      },
      itemCount: snapshot.data.result.length,
    );
  }
}
