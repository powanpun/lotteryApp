import 'package:flutter/material.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';
import 'package:predictandwin/resources/app_constants/app_text.dart';
import 'package:predictandwin/resources/material_icons/material_icons.dart';
import 'package:predictandwin/utils/boxdecorations.dart';
import 'package:predictandwin/utils/custome_sized_box.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: CustomeBoxDecoration8(),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(
              AppMaterialIcons.facebook_rounded,
              color: AppColors.facebookBlue,
            ),
            customSizedBoxw16(),
            const Text(AppText.facebookLoginText),
          ],
        ));
  }
}
