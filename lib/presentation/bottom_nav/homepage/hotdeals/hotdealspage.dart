import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predictandwin/global_widget/custom_appbar/titlebarwithcart.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';
import 'package:predictandwin/utils/boxdecorations.dart';
import 'package:predictandwin/utils/custom_text.dart';
import 'package:predictandwin/utils/padding.dart';

class HotDealsPage extends StatefulWidget {
  const HotDealsPage({Key? key}) : super(key: key);

  @override
  State<HotDealsPage> createState() => _HotDealsPageState();
}

class _HotDealsPageState extends State<HotDealsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: <Widget>[
          const SliverAppBar(
              elevation: 0,
              backgroundColor: AppColors.backgroundGrey,
              automaticallyImplyLeading: false,
              pinned: true,
              flexibleSpace: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: TitleBarWithCart(),
              )),
          SliverPadding(
            padding: padding16(),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    decoration: customeBoxDecorationWithShadow(),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16)),
                            child: Image.network(
                              "https://img.freepik.com/free-psd/smartwatch-mockup_439185-553.jpg?t=st=1657274444~exp=1657275044~hmac=645c74f3848ca7bd762341738cb340b2f4261a136316afa3d74f13a4b5eb691b&w=996",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            customSubHeading1(
                                "Product $index", AppColors.black),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/gold-bars.png",
                                  scale: 4,
                                ),
                                Text("115",
                                    style: GoogleFonts.lato(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.black)),
                              ],
                            ),
                          ],
                        ))
                      ],
                    ),
                  );
                },
                childCount: 50,
              ),
            ),
          ),

          // other sliver widgets
        ],
      ),
    ));
  }
}
