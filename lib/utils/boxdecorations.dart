import 'package:flutter/material.dart';
import 'package:predictandwin/resources/AppColor/app_colors.dart';

BoxDecoration customeBoxDecoration() {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: AppColors.backgroundGrey2);
}

BoxDecoration customeBoxDecoration8() {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(8), color: AppColors.backgroundGrey2);
}

BoxDecoration customeBoxDecorationColor(Color color) {
  return BoxDecoration(borderRadius: BorderRadius.circular(8), color: color);
}

BoxDecoration customeBoxDecorationWithShadow() {
  return BoxDecoration(boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.3),
      spreadRadius: 2,
      blurRadius: 7, // changes position of shadow
    ),
  ], borderRadius: BorderRadius.circular(16), color: AppColors.backgroundGrey2);
}

BoxDecoration customeBoxDecorationWithShadowDark() {
  return BoxDecoration(boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 2,
      blurRadius: 2, // changes position of shadow
    ),
  ], borderRadius: BorderRadius.circular(16), color: AppColors.blackLight);
}

BoxDecoration customeBoxDecorationWithShadowForSmall() {
  return BoxDecoration(boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 1,
      blurRadius: 2, // changes position of shadow
    ),
  ], borderRadius: BorderRadius.circular(16), color: AppColors.blackLight);
}
