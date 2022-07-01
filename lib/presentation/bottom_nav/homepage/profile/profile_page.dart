import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';
import 'package:predictandwin/utils/screensize.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: AppColors.backgroundGrey,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              backgroundColor: AppColors.backgroundGrey,
              expandedHeight: getScreenHeight(context) / 3,
              flexibleSpace: FlexibleSpaceBar(
                title: SizedBox(
                  height: getScreenHeight(context) / 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Man City - Liv",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AppColors.black),
                      ),
                    ],
                  ),
                ),
                centerTitle: true,
              ),
            ),
            SliverFillRemaining(
              child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      )),
                  child: Column(children: [])),
            )
          ],
        ),
      ),
    ));
  }
}
