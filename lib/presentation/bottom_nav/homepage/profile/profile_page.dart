import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predictandwin/app_controller/authentication/bloc/authentication_bloc.dart';
import 'package:predictandwin/global_widget/buttons/custom_rounded_button.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';
import 'package:predictandwin/utils/boxdecorations.dart';
import 'package:predictandwin/utils/custom_text.dart';
import 'package:predictandwin/utils/custome_sized_box.dart';
import 'package:predictandwin/utils/padding.dart';

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
        color: AppColors.white,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: AppColors.white,
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                title: SingleChildScrollView(
                  child: Row(
                    children: const [
                      BackButton(),
                      Expanded(
                        child: Text(
                          "Profile",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: AppColors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                centerTitle: true,
              ),
            ),
            SliverFillRemaining(
              child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      )),
                  child: Column(children: [
                    const ProfileImageSection(),
                    customSizedBoxh16(),
                    const ScoreSection(),
                    customSizedBoxh16(),
                    const AchievementSetion(),
                    customSizedBoxh16(),
                    Expanded(child: Container()),
                    const LogOutButton()
                  ])),
            )
          ],
        ),
      ),
    ));
  }
}

class AchievementSetion extends StatelessWidget {
  const AchievementSetion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customHeading1("Achievements", AppColors.black),
        customSizedBoxh16(),
        SizedBox(
          width: double.infinity,
          height: 100,
          child: ListView.builder(
            itemCount: 20,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Card(
                child: SizedBox(
                    height: 100,
                    width: 100,
                    child: (Icon(
                      Icons.biotech,
                      size: 64,
                      color: AppColors.backgroundGrey2,
                    ))),
              );
            },
          ),
        ),
      ],
    );
  }
}

class ScoreSection extends StatelessWidget {
  const ScoreSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: padding16(),
            decoration: customeBoxDecorationColor(AppColors.backgroundGrey),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/gold-bars.png",
                  scale: 1.5,
                ),
                Text("115",
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black)),
              ],
            ),
          ),
        ),
        customSizedBoxw16(),
        Expanded(
          child: Container(
            padding: padding16(),
            decoration: customeBoxDecorationColor(AppColors.backgroundGrey),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/gold-bars.png",
                  scale: 1.5,
                ),
                Text("115",
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black)),
              ],
            ),
          ),
        ),
        customSizedBoxw16(),
        Expanded(
          child: Container(
            padding: padding16(),
            decoration: customeBoxDecorationColor(AppColors.backgroundGrey),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/gold-bars.png",
                  scale: 1.5,
                ),
                Text("115",
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black)),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context
          .read<AuthenticationBloc>()
          .add(AuthenticationLogoutRequested()),
      child: const CustomeRoundedButton(
          text: "Log Out",
          textColor: AppColors.black,
          backgroundColor: AppColors.backgroundGrey),
    );
  }
}

class ProfileImageSection extends StatelessWidget {
  const ProfileImageSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
          width: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              "https://cdn.pixabay.com/photo/2021/10/23/19/25/cat-6735840_960_720.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        customSizedBoxh16(),
        customHeading1("Powan pun", AppColors.black),
        customSizedBoxh16(),
      ],
    );
  }
}
