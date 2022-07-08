import 'package:flutter/material.dart';
import 'package:predictandwin/global_widget/custom_appbar/titlebar.dart';
import 'package:predictandwin/presentation/bottom_nav/homepage/homepage_sections/featured_prediction_section.dart';
import 'package:predictandwin/presentation/bottom_nav/homepage/homepage_sections/fortune_section.dart';
import 'package:predictandwin/presentation/bottom_nav/homepage/homepage_sections/guild_section.dart';
import 'package:predictandwin/presentation/bottom_nav/homepage/homepage_sections/lottery_section.dart';
import 'package:predictandwin/presentation/bottom_nav/homepage/homepage_sections/other_prediction_section.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';
import 'package:predictandwin/utils/custome_sized_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              slivers: <Widget>[
            const SliverAppBar(
                backgroundColor: AppColors.backgroundGrey,
                automaticallyImplyLeading: false,
                pinned: true,
                flexibleSpace: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: TitleBar(),
                )),
            SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const LotteryBanner(),
                      customSizedBoxh16(),
                      const FortuneWheelSection(),
                      customSizedBoxh16(),
                      const FeaturedPredictionList(),
                      customSizedBoxh16(),
                      const GuildSection(),
                      customSizedBoxh16(),
                      const OtherPredictionsList(),
                    ],
                  ),
                ),
              ),
            ),
          ])),
    );
  }
}
