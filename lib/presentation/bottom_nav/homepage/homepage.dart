import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predictandwin/_router/router.dart';
import 'package:predictandwin/app_controller/logics/lottery/bloc/lottery_bloc.dart';
import 'package:predictandwin/app_controller/logics/predictions/bloc/predictions_bloc.dart';
import 'package:predictandwin/global_widget/buttons/custome_button_yellow.dart';
import 'package:predictandwin/global_widget/custom_appbar/titlebar.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';
import 'package:predictandwin/utils/boxdecorations.dart';
import 'package:predictandwin/utils/custom_text.dart';
import 'package:predictandwin/utils/custome_sized_box.dart';
import 'package:predictandwin/utils/screensize.dart';

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
                      const PredictionList(),
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

class FortuneWheelSection extends StatelessWidget {
  const FortuneWheelSection({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customHeading1("Test Your Day", AppColors.black),
        customSizedBoxh16(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: CustomeBoxDecoration(),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text("",
                                      style: GoogleFonts.lato(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.white)),
                                ),
                                InkWell(
                                  onTap: () => Navigator.pushNamed(
                                      context, fortuneWheelPageRoute),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.backgroundGrey,
                                        borderRadius: BorderRadius.circular(8)),
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    width: double.infinity,
                                    child: Text("Spin Now",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.lato(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.black)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ])),
                  ),
                ],
              ),
            ),
            Container(
              decoration: CustomeBoxDecoration(),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text("",
                                      style: GoogleFonts.lato(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.white)),
                                ),
                                InkWell(
                                  onTap: () => Navigator.pushNamed(
                                      context, weeklylotteryPageRoute),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.backgroundGrey,
                                        borderRadius: BorderRadius.circular(8)),
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    width: double.infinity,
                                    child: Text("Join Now",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.lato(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.black)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ])),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class PredictionList extends StatelessWidget {
  const PredictionList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PredictionsBloc, PredictionsState>(
      builder: (context, state) {
        if (state is PredictionsLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is PredictionsInitial) {
          return const Center(
            child: Text("inital stucks"),
          );
        }
        if (state is PredictionsLoaded) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customHeading1("Featured Predictions", AppColors.black),
              customSizedBoxh16(),
              SizedBox(
                height: getScreemWidth(context) / 3,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.predictions.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => Navigator.pushNamed(
                          context, predictionDetailPageRoute),
                      child: Container(
                        decoration: CustomeBoxDecoration(),
                        width: getScreemWidth(context) / 3,
                        height: getScreemWidth(context) / 3,
                        margin: const EdgeInsets.only(right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: getScreemWidth(context) / 3,
                              width: double.infinity,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Stack(
                                      fit: StackFit.passthrough,
                                      children: [
                                        Image.network(
                                          state.predictions[index].image,
                                          fit: BoxFit.cover,
                                        ),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                color: AppColors.blackLight,
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(8),
                                                    bottomRight:
                                                        Radius.circular(8))),
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8),
                                            width: double.infinity,
                                            child: Text(
                                                state.predictions[index].title,
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.lato(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.white)),
                                          ),
                                        ),
                                      ])),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        } else {
          return const Center(
            child: Text("oops"),
          );
        }
      },
    );
  }
}

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  width: double.infinity,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Stack(fit: StackFit.passthrough, children: [
                        Image.network(
                          state.lottery.image,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Feeling lucky?",
                                  style: GoogleFonts.lato(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              const SizedBox(
                                height: 8,
                              ),
                              Expanded(
                                child: Text("Win exclusive prizes now.",
                                    style: GoogleFonts.lato(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 8),
                                decoration: BoxDecoration(
                                    color: AppColors.mainColorLight,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text("Ends in: 31 july 2022",
                                    style: GoogleFonts.lato(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const CustomeButtomYellow(),
                            ],
                          ),
                        ),
                      ])),
                ),
              ],
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

class GuildSection extends StatelessWidget {
  const GuildSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LotteryBloc, LotteryState>(
      builder: (context, state) {
        if (state is LotteryLoaded) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customHeading1("Create Your Own Guild", AppColors.black),
              customSizedBoxh16(),
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
                width: double.infinity,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Stack(fit: StackFit.passthrough, children: [
                      Image.network(
                        "https://img.freepik.com/free-photo/abstract-app-social-web-service-object_1418-520.jpg?t=st=1656327189~exp=1656327789~hmac=592d6ba9d7dd856dd6b084057bb9e5fe889591e24e4b0009a85317a2967f1566&w=1060",
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text("",
                                  style: GoogleFonts.lato(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColors.mainColor,
                                  borderRadius: BorderRadius.circular(8)),
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              width: double.infinity,
                              child: Text("Connect Now",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                            ),
                          ],
                        ),
                      ),
                    ])),
              ),
            ],
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

class OtherPredictionsList extends StatelessWidget {
  const OtherPredictionsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PredictionsBloc, PredictionsState>(
      builder: (context, state) {
        if (state is PredictionsLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is PredictionsInitial) {
          return const Center(
            child: Text("inital stucks"),
          );
        }
        if (state is PredictionsLoaded) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customHeading1("Other Predictions", AppColors.black),
              customSizedBoxh16(),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: state.predictions.length,
                itemBuilder: (context, index) {
                  return Container(
                      decoration: CustomeBoxDecoration8(),
                      margin: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                state.predictions[index].image,
                              ),
                            ),
                          ),
                          customSizedBoxw8(),
                          Expanded(
                            flex: 2,
                            child: Text(state.predictions[index].title,
                                style: GoogleFonts.lato(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          )
                        ],
                      ));
                },
              ),
            ],
          );
        } else {
          return const Center(
            child: Text("oops"),
          );
        }
      },
    );
  }
}
