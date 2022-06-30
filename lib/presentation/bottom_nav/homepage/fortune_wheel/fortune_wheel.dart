import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';
import 'package:predictandwin/utils/custome_sized_box.dart';

import '../../../../global_widget/buttons/custome_back_button.dart';

class FortuneWheelPage extends StatefulWidget {
  const FortuneWheelPage({Key? key}) : super(key: key);

  @override
  State<FortuneWheelPage> createState() => _FortuneWheelPageState();
}

class _FortuneWheelPageState extends State<FortuneWheelPage> {
  StreamController<int> selected = StreamController<int>.broadcast();
  late int result;
  int spinsLeft = 2;
  String buttonText = "Spin";
  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  void initState() {
    selected.stream.listen((event) {
      result = event;
      log(result.toString());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final items = <String>[
      '1',
      '10',
      '2',
      '5',
      '1',
      '50',
      '20',
      '2',
      '20',
      '1',
      '10',
    ];

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CustomBackButton(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FortuneWheel(
                    physics: NoPanPhysics(),
                    animateFirst: false,
                    selected: selected.stream,
                    indicators: <FortuneIndicator>[
                      FortuneIndicator(
                        alignment: Alignment
                            .topCenter, // <-- changing the position of the indicator
                        child: TriangleIndicator(
                          color: AppColors
                              .yellow, // <-- changing the color of the indicator
                        ),
                      ),
                    ],
                    items: [
                      for (var it in items)
                        FortuneItem(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(it,
                                  textAlign: TextAlign.end,
                                  style: GoogleFonts.lato(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.white)),
                            ),
                          ],
                        )),
                    ],
                    onAnimationEnd: () {
                      if (spinsLeft <= 0) {
                        setState(() {
                          buttonText = "Get more spins";
                        });
                      }
                      if (result == 0) {
                        log("try again");
                      } else if (result == 1) {
                        log(" hurray");
                      } else if (result % 2 == 0) {
                        log("try again");
                      } else {
                        log(" hurray");
                      }
                    }),
              ),
            ),
            Text("$spinsLeft spin left",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black)),
            customSizedBoxh16(),
            InkWell(
              onTap: () {
                if (spinsLeft > 0) {
                  setState(() {
                    spinsLeft = spinsLeft - 1;
                    selected.add(
                      Fortune.randomInt(0, items.length),
                    );
                  });
                } else {}
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 16),
                color: AppColors.yellow,
                child: Text(buttonText,
                    style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
