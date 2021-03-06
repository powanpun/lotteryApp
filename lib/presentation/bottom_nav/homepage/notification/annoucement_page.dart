import 'package:flutter/material.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';
import 'package:predictandwin/utils/boxdecorations.dart';
import 'package:predictandwin/utils/custom_text.dart';
import 'package:predictandwin/utils/custome_sized_box.dart';
import 'package:predictandwin/utils/padding.dart';
import 'package:predictandwin/utils/screensize.dart';

class AnnoucenemntPage extends StatefulWidget {
  const AnnoucenemntPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AnnoucenemntPageState();
}

class AnnoucenemntPageState extends State<AnnoucenemntPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          slivers: <Widget>[
            SliverPadding(
              padding: padding16(),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return InkWell(
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        decoration: customeBoxDecorationWithShadow(),
                        width: double.infinity,
                        height: getScreemWidth(context) / 1.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16)),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Image.network(
                                      "https://img.freepik.com/free-psd/smartwatch-mockup_439185-553.jpg?t=st=1657274444~exp=1657275044~hmac=645c74f3848ca7bd762341738cb340b2f4261a136316afa3d74f13a4b5eb691b&w=996",
                                      fit: BoxFit.cover,
                                      scale: 1,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customSubHeading1(
                                      "Deal $index", AppColors.black),
                                  customSizedBoxh8(),
                                  customDescription1(
                                      "this is discription", AppColors.black)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  childCount: 10,
                ),
              ),
            ),

            // other sliver widgets
          ],
        ),
      ),
    );
  }
}
