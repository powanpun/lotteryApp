import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';
import 'package:predictandwin/utils/custom_text.dart';
import 'package:predictandwin/utils/custome_sized_box.dart';

class WinnersPage extends StatefulWidget {
  const WinnersPage({Key? key}) : super(key: key);

  @override
  State<WinnersPage> createState() => _WinnersPageState();
}

class _WinnersPageState extends State<WinnersPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            customHeading32("Leader board", AppColors.black),
            customSizedBoxh16(),
            Wrap(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    LeaderBoardItem(
                      playerName: "Sonahang Rai",
                      gold: "900",
                      rank: "2",
                      margin: 0.0,
                    ),
                    LeaderBoardItem(
                      playerName: "Powan Pun",
                      gold: "1000",
                      rank: "1",
                      margin: 60,
                    ),
                    LeaderBoardItem(
                      playerName: "Shyam",
                      gold: "800",
                      rank: "3",
                      margin: 0,
                    ),
                  ],
                ),
              ],
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 50,
              itemBuilder: (context, index) {
                return Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text((index + 4).toString(),
                              style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blackLight)),
                        ),
                        customSizedBoxw16(),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: SizedBox(
                            height: 60,
                            width: 60,
                            child: Image.network(
                              "https://cdn.pixabay.com/photo/2021/10/23/19/25/cat-6735840_960_720.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        customSizedBoxw16(),
                        Expanded(
                          flex: 10,
                          child: Text("player",
                              style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/gold-bars.png",
                              scale: 4,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text("115",
                                style: GoogleFonts.lato(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.black)),
                          ],
                        ),
                      ],
                    ));
              },
            ),
          ],
        ),
      ))),
    );
  }
}

class LeaderBoardItem extends StatelessWidget {
  final String playerName;
  final String gold;
  final String rank;
  final double margin;

  const LeaderBoardItem({
    Key? key,
    required this.playerName,
    required this.gold,
    required this.rank,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(bottom: margin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Badge(
              position: BadgePosition.topEnd(top: 0, end: 0),
              toAnimate: false,
              shape: BadgeShape.circle,
              badgeColor: AppColors.mainColor,
              borderRadius: BorderRadius.circular(8),
              badgeContent: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(rank,
                    style: const TextStyle(color: Colors.white, fontSize: 18)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2021/10/23/19/25/cat-6735840_960_720.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            customSizedBoxh8(),
            Text(playerName,
                style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            Row(
              children: [
                Image.asset(
                  "assets/images/gold-bars.png",
                  scale: 4,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(gold,
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
