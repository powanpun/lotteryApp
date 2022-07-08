import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predictandwin/resources/AppColor/app_colors.dart';

class TitleBarWithCart extends StatelessWidget {
  const TitleBarWithCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 2),
          decoration: BoxDecoration(
              color: AppColors.mainColorLight,
              borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Row(
            children: [
              Image.asset(
                "assets/images/gold-bars.png",
                scale: 1.5,
              ),
              const SizedBox(
                width: 8,
              ),
              Text("115",
                  style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black)),
            ],
          ),
        ),
        const Icon(Icons.shopping_cart_rounded)
      ],
    );
  }
}
