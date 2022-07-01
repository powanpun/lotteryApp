import 'package:flutter/material.dart';
import 'package:predictandwin/_router/router.dart';
import 'package:predictandwin/global_widget/buttons/custom_rounded-button.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';
import 'package:predictandwin/resources/app_constants/app_text.dart';
import 'package:predictandwin/utils/boxdecorations.dart';
import 'package:predictandwin/utils/custom_text.dart';
import 'package:predictandwin/utils/custome_sized_box.dart';
import 'package:predictandwin/utils/screensize.dart';

class FortuneWheelSection extends StatelessWidget {
  const FortuneWheelSection({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customHeading1(AppText.homepageFortuneTitleText, AppColors.black),
        customSizedBoxh16(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            SpinView(),
            WeeklyLotteryView(),
          ],
        ),
      ],
    );
  }
}

class WeeklyLotteryView extends StatelessWidget {
  const WeeklyLotteryView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: customeBoxDecoration(),
      width: getScreemWidth(context) / 2.5,
      height: getScreemWidth(context) / 2.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getScreemWidth(context) / 2.5,
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(fit: StackFit.passthrough, children: [
                  Image.network(
                    "https://img.freepik.com/free-vector/lottery-tickets-golden-coins-stacks-gambling-business-advertising_1262-13074.jpg?w=740&t=st=1655981680~exp=1655982280~hmac=2e90cce4439d4999e588d6b546e038b566ce197253cc557cb0aa9386d3c26c46",
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, weeklylotteryPageRoute),
                          child: const CustomeRoundedButton(
                            text: AppText.homepageFortuneButtonText,
                            backgroundColor: AppColors.backgroundGrey2,
                            textColor: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ])),
          ),
        ],
      ),
    );
  }
}

class SpinView extends StatelessWidget {
  const SpinView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: customeBoxDecoration(),
      width: getScreemWidth(context) / 2.5,
      height: getScreemWidth(context) / 2.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getScreemWidth(context) / 2.5,
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(fit: StackFit.passthrough, children: [
                  Image.network(
                    "https://img.freepik.com/free-vector/wheel-fortune-lucky-girl-winner-casino_107791-1550.jpg?w=900&t=st=1655977188~exp=1655977788~hmac=4e08684158e688275c20c37f5ba2adfb6776e8ced2b3e7ea3fa51e7276307e6c",
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, fortuneWheelPageRoute),
                          child: const CustomeRoundedButton(
                            text: AppText.homepageFortuneButtonText,
                            backgroundColor: AppColors.backgroundGrey2,
                            textColor: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ])),
          ),
        ],
      ),
    );
  }
}
