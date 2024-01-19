import 'package:amazon_clone_with_node_frontend/models/user.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
    Id: '',
    name: '',
    password: '',
    address: '',
    type: '',
    token: '',
    email: '',
  );

  User get user => _user;

  void setUser(String user) {
    _user = User.fromJson(user);
    notifyListeners();
  }
}
