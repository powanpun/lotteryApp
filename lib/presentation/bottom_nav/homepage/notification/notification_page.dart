import 'package:flutter/material.dart';
import 'package:predictandwin/presentation/bottom_nav/homepage/notification/annoucement_page.dart';
import 'package:predictandwin/presentation/bottom_nav/homepage/notification/personal_notification_page.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.backgroundGrey2,
            automaticallyImplyLeading: false,
            elevation: 0,
            title: TabBar(
              labelColor: AppColors.black,
              indicator: UnderlineTabIndicator(
                  borderSide:
                      BorderSide(width: 2.0, color: AppColors.mainColorLight),
                  insets: const EdgeInsets.symmetric(horizontal: 16.0)),
              tabs: const [
                Tab(text: "Annoucenemnt"),
                Tab(
                  text: "Notifications",
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [AnnoucenemntPage(), PersonalNotificationPage()],
          ),
        ),
      ),
    );
  }
}
