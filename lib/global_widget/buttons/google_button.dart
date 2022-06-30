import 'package:flutter/material.dart';
import 'package:predictandwin/resources/app_constants/app_text.dart';
import 'package:predictandwin/resources/assets_manager/assets_manager.dart';
import 'package:predictandwin/utils/boxdecorations.dart';
import 'package:predictandwin/utils/custome_sized_box.dart';
import 'package:predictandwin/utils/padding.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: customeBoxDecoration8(),
        padding: padding16(),
        child: Row(
          children: [
            Image.asset(
              AssetManager.googleLogo,
              scale: 3,
            ),
            customSizedBoxw16(),
            const Text(AppText.googleLoginText),
          ],
        ));
  }
}
