import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predictandwin/resources/AppColor/app_colors.dart';
import 'package:predictandwin/utils/boxdecorations.dart';
import 'package:predictandwin/utils/custom_dialog.dart';
import 'package:predictandwin/utils/custom_text.dart';
import 'package:predictandwin/utils/padding.dart';

class PurchaseGoldPage extends StatefulWidget {
  const PurchaseGoldPage({Key? key}) : super(key: key);

  @override
  State<PurchaseGoldPage> createState() => _PurchaseGoldPageState();
}

class _PurchaseGoldPageState extends State<PurchaseGoldPage> {
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
            automaticallyImplyLeading: true,
            iconTheme: IconThemeData(color: Colors.black),
            pinned: true,
          ),
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
                  return InkWell(
                    onTap: () {
                      customProductBottomDialog(
                          context,
                          "https://img.freepik.com/free-psd/smartwatch-mockup_439185-553.jpg?t=st=1657274444~exp=1657275044~hmac=645c74f3848ca7bd762341738cb340b2f4261a136316afa3d74f13a4b5eb691b&w=996",
                          "Product $index",
                          "115",
                          "description");
                    },
                    child: Container(
                      decoration: customeBoxDecorationWithShadow(),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16)),
                              child: Image.asset(
                                "assets/images/gold-bars.png",
                              ),
                            ),
                          ),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              customSubHeading1(
                                  "Golds ${(index + 1) * 5}", AppColors.black),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Rs. ${(index + 5) * 10}",
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
                    ),
                  );
                },
                childCount: 8,
              ),
            ),
          ),

          // other sliver widgets
        ],
      ),
    ));
  }
}
