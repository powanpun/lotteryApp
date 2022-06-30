import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predictandwin/app_controller/logics/predictions/bloc/predictions_bloc.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';
import 'package:predictandwin/utils/boxdecorations.dart';
import 'package:predictandwin/utils/custom_text.dart';
import 'package:predictandwin/utils/custome_sized_box.dart';

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
                      decoration: customeBoxDecoration8(),
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
