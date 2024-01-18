import 'dart:convert';

import 'package:amazon_clone_with_node_frontend/constants/utils.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void httpErrorHandle({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess,
}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();
      print("111");
      break;
    case 400:
      showSnackBar(context, jsonDecode(response.body)['msg']);
      print("222");
      break;
    case 500:
      showSnackBar(context, jsonDecode(response.body)['error']);
      print("333");
      break;
    default:
      showSnackBar(context, response.body);
      print("444");
      break;
  }
}
