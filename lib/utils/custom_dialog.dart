import 'package:flutter/material.dart';
import 'package:predictandwin/global_widget/buttons/custome_button_yellow.dart';
import 'package:predictandwin/resources/AppColor/app_colors.dart';
import 'package:predictandwin/utils/custom_text.dart';
import 'package:predictandwin/utils/custome_sized_box.dart';
import 'package:predictandwin/utils/custome_snackbar.dart';
import 'package:predictandwin/utils/screensize.dart';

Future<void> customProductBottomDialog(BuildContext context, String image,
    String title, String value, String description) {
  return showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
              color: AppColors.backgroundGrey,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16))),
          height: getScreenHeight(context) / 2,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    customSizedBoxw16(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customHeading1(title, AppColors.black),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/gold-bars.png",
                              scale: 4,
                            ),
                            customSubHeading1(value, AppColors.black),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Expanded(
                    child: customDescription1(description, AppColors.black)),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      showSuccessSnackBar(
                          context, "$title successfully added to cart");
                    },
                    child: const CustomeButtomYellow(text: "Add To Cart"))
              ],
            ),
          ),
        );
      });
}
