import 'package:flutter/material.dart';

void showWarningSnackbar(
    {required String message, required BuildContext context}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Text(message),
      backgroundColor: Colors.yellow,
    ),
  );
}
