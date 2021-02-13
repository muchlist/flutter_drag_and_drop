import 'package:flutter/material.dart';

mixin SnackMessage {
  void showMessage(BuildContext context, String text) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(text),
      duration: const Duration(milliseconds: 600),
    ));
  }
}
