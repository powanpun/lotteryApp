import 'package:flutter/material.dart';
import 'package:predictandwin/resources/app_constants/app_text.dart';
import 'package:predictandwin/resources/assets_manager/assets_manager.dart';
import 'package:predictandwin/utils/boxdecorations.dart';
import 'package:predictandwin/utils/custome_sized_box.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: CustomeBoxDecoration8(),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(
              AssetManager.google_logo,
              scale: 3,
            ),
            customSizedBoxw16(),
            const Text(AppText.googleLoginText),
          ],
        ));
  }
}
