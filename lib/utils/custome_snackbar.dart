import 'package:flutter/material.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';

showSuccessSnackBar(BuildContext context, String msg) {
  final snackBar = SnackBar(
    duration: const Duration(seconds: 2),
    backgroundColor: AppColors.mainColor,
    behavior: SnackBarBehavior.floating,
    content: Text(msg),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

showFailureSnackBar(BuildContext context, String msg) {
  final snackBar = SnackBar(
    duration: const Duration(seconds: 2),
    backgroundColor: AppColors.errorRed,
    behavior: SnackBarBehavior.floating,
    content: Text(msg),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

showWarningSnackBar(BuildContext context, String msg) {
  final snackBar = SnackBar(
    duration: const Duration(seconds: 2),
    backgroundColor: AppColors.warningOrange,
    behavior: SnackBarBehavior.floating,
    content: Text(msg),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
