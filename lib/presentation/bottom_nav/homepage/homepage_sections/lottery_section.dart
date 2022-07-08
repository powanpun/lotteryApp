import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predictandwin/_router/router.dart';
import 'package:predictandwin/app_controller/logics/lottery/bloc/lottery_bloc.dart';
import 'package:predictandwin/global_widget/buttons/custom_geen_button.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';
import 'package:predictandwin/resources/app_constants/app_text.dart';
import 'package:predictandwin/utils/boxdecorations.dart';
import 'package:predictandwin/utils/custom_text.dart';
import 'package:predictandwin/utils/custome_sized_box.dart';
import 'package:predictandwin/utils/padding.dart';

class LotteryBanner extends StatelessWidget {
  const LotteryBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LotteryBloc, LotteryState>(
      builder: (context, state) {
        if (state is LotteryLoaded) {
          return InkWell(
            onTap: () => Navigator.pushNamed(context, lotteryDetailPageRoute),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              width: double.infinity,
              child: Container(
                decoration: customeBoxDecorationWithShadow(),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Stack(fit: StackFit.passthrough, children: [
                      Image.network(
                        state.lottery.image,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: padding16(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customHeading1(AppText.homepageLotteryTitleText,
                                AppColors.black),
                            customSizedBoxh8(),
                            Expanded(
                                child: customSubHeading1(
                                    AppText.homepageLotterySubTitleText,
                                    AppColors.black)),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 8),
                              decoration: BoxDecoration(
                                  color: AppColors.yellow,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Text("Ends in: 31 july 2022",
                                  style: GoogleFonts.lato(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                            ),
                            customSizedBoxh16(),
                            const CustomeButtomGreen(),
                          ],
                        ),
                      ),
                    ])),
              ),
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
