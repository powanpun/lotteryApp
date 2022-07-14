import 'package:flutter/material.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';
import 'package:predictandwin/utils/boxdecorations.dart';
import 'package:predictandwin/utils/custom_text.dart';
import 'package:predictandwin/utils/custome_sized_box.dart';
import 'package:predictandwin/utils/padding.dart';

class PersonalNotificationPage extends StatefulWidget {
  const PersonalNotificationPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PersonalNotificationPageState();
}

class PersonalNotificationPageState extends State<PersonalNotificationPage> {
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customSubHeading1(
                                      "Title $index", AppColors.black),
                                  customSizedBoxh8(),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: customDescription1(
                                            "this is discription",
                                            AppColors.black),
                                      ),
                                      customDescription1(
                                          "1 day ago", AppColors.black),
                                    ],
                                  )
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
