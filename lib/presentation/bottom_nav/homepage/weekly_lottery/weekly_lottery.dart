import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:predictandwin/global_widget/buttons/custom_geen_button.dart';
import 'package:predictandwin/global_widget/buttons/custome_back_button.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';
import 'package:predictandwin/utils/custome_sized_box.dart';
import 'package:predictandwin/utils/screensize.dart';

class WeeklyLottery extends StatefulWidget {
  const WeeklyLottery({Key? key}) : super(key: key);

  @override
  State<WeeklyLottery> createState() => _WeeklyLotteryState();
}

class _WeeklyLotteryState extends State<WeeklyLottery> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomBackButton(),
            customSizedBoxh16(),
            Container(
              color: AppColors.backgroundGrey2,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("120",
                            style: GoogleFonts.lato(
                                fontSize: 64,
                                fontWeight: FontWeight.bold,
                                color: AppColors.mainColor)),
                        Text("current participants",
                            style: GoogleFonts.lato(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black)),
                        customSizedBoxh8(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          decoration: BoxDecoration(
                              color: AppColors.yellow,
                              borderRadius: BorderRadius.circular(8)),
                          child: Text("Ends in: 31 july 2022",
                              style: GoogleFonts.lato(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Lottie.asset("assets/animations/gift.json")),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Current prizes",
                  style: GoogleFonts.lato(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black)),
            ),
            SizedBox(
              height: getScreenHeight(context) / 6,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            SizedBox(
                              width: getScreemWidth(context) / 5,
                              height: getScreemWidth(context) / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(
                                  "https://images.unsplash.com/photo-1510557880182-3d4d3cba35a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            customSizedBoxh16(),
                            SizedBox(
                              width: getScreemWidth(context) / 4,
                              child: Text("I phone",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lato(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.black)),
                            ),
                          ],
                        ));
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Previous winners",
                  style: GoogleFonts.lato(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black)),
            ),
            SizedBox(
              height: getScreenHeight(context) / 6,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            SizedBox(
                              width: getScreemWidth(context) / 5,
                              height: getScreemWidth(context) / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(
                                  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            customSizedBoxh16(),
                            SizedBox(
                              width: getScreemWidth(context) / 4,
                              child: Text("Previous winer",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lato(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.black)),
                            ),
                          ],
                        ));
                  }),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: CustomeButtomGreen(),
            ),
          ],
        ),
      ),
    ));
  }
}
