import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predictandwin/_router/router.dart';
import 'package:predictandwin/resources/AppColor/app_colors.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
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
        SizedBox(
          height: 52,
          width: 40,
          child: PhysicalModel(
            color: AppColors.mainColor,
            shadowColor: AppColors.mainColor,
            elevation: 4,
            shape: BoxShape.circle,
            child: InkWell(
              onTap: () => Navigator.pushNamed(context, profilePageRoute),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2021/10/23/19/25/cat-6735840_960_720.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
