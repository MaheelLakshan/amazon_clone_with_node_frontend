import 'package:amazon_clone_with_node_frontend/constants/error_handling.dart';
import 'package:amazon_clone_with_node_frontend/constants/global_variables.dart';
import 'package:amazon_clone_with_node_frontend/constants/utils.dart';
import 'package:amazon_clone_with_node_frontend/models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthService {
// SIGN UP USER
  void signUpUser(
      {required BuildContext context,
      required String email,
      required String password,
      required String name}) async {
    try {
      User user = User(
          Id: 'ljlkl',
          name: name,
          email: email,
          password: password,
          address: '',
          type: '',
          token: '');

      http.Response res = await http.post(
        Uri.parse('$uri/api/signup'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showSnackBar(context, 'Account has been created !');
        },
      );

      // print(res.body);
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
