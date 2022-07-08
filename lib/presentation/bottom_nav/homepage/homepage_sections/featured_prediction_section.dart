import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predictandwin/_router/router.dart';
import 'package:predictandwin/app_controller/logics/predictions/bloc/predictions_bloc.dart';
import 'package:predictandwin/resources/AppColor/app_colors.dart';
import 'package:predictandwin/utils/boxdecorations.dart';
import 'package:predictandwin/utils/custom_text.dart';
import 'package:predictandwin/utils/custome_sized_box.dart';
import 'package:predictandwin/utils/screensize.dart';

class FeaturedPredictionList extends StatelessWidget {
  const FeaturedPredictionList({
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
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  scrollDirection: Axis.horizontal,
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return InkWell(
                            onTap: () => Navigator.pushNamed(
                                context, predictionDetailPageRoute),
                            child: Container(
                              decoration:
                                  customeBoxDecorationWithShadowForSmall(),
                              width: getScreemWidth(context) / 3,
                              height: getScreemWidth(context) / 3,
                              margin: const EdgeInsets.only(right: 8, left: 2),
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
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                  decoration: const BoxDecoration(
                                                      color:
                                                          AppColors.blackLight,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              bottomLeft: Radius
                                                                  .circular(8),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          8))),
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 8),
                                                  width: double.infinity,
                                                  child: Text(
                                                      state.predictions[index]
                                                          .title,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: GoogleFonts.lato(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              AppColors.white)),
                                                ),
                                              ),
                                            ])),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        childCount: state.predictions.length,
                      ),
                    ),
                  ],
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
