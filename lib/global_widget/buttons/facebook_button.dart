import 'package:flutter/material.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';
import 'package:predictandwin/resources/app_constants/app_text.dart';
import 'package:predictandwin/resources/material_icons/material_icons.dart';
import 'package:predictandwin/utils/boxdecorations.dart';
import 'package:predictandwin/utils/custome_sized_box.dart';
import 'package:predictandwin/utils/padding.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: customeBoxDecoration8(),
        padding: padding16(),
        child: Row(
          children: [
            Icon(
              AppMaterialIcons.facebookRounded,
              color: AppColors.facebookBlue,
            ),
            customSizedBoxw16(),
            const Text(AppText.facebookLoginText),
          ],
        ));
  }
}
