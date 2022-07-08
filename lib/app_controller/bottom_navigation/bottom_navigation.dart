import 'package:flutter/material.dart';
import 'package:predictandwin/presentation/bottom_nav/homepage/homepage.dart';
import 'package:predictandwin/presentation/bottom_nav/homepage/hotdeals/hotdealspage.dart';
import 'package:predictandwin/presentation/bottom_nav/homepage/notification/notification_page.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';

import '../../presentation/bottom_nav/winners/winners.dart';

class NavigationHandlerPage extends StatefulWidget {
  const NavigationHandlerPage({Key? key}) : super(key: key);

  @override
  NavigationHandlerPageState createState() => NavigationHandlerPageState();
}

class NavigationHandlerPageState extends State<NavigationHandlerPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int currentTab = 0;
  final List<Widget> screens = [
    const HomePage(),
    const HotDealsPage(),
    const NotificationPage(),
    const WinnersPage(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0.0,
        child: Container(
          height: 60,
          decoration: const BoxDecoration(
              color: AppColors.backgroundGrey2,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16))),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                tooltip: 'Home',
                icon: Icon(Icons.home,
                    color: currentTab == 0
                        ? Colors.green.shade700
                        : Colors.black54),
                onPressed: () {
                  setState(() {
                    currentScreen = const HomePage();
                    currentTab = 0;
                  });
                },
              ),
              IconButton(
                tooltip: 'Hot Deals',
                icon: Icon(Icons.local_fire_department,
                    color: currentTab == 1
                        ? Colors.green.shade700
                        : Colors.black54),
                onPressed: () {
                  setState(() {
                    currentScreen = const HotDealsPage();
                    currentTab = 1;
                  });
                },
              ),
              IconButton(
                tooltip: 'Notifications',
                icon: Icon(Icons.message,
                    color: currentTab == 2
                        ? Colors.green.shade700
                        : Colors.black54),
                onPressed: () {
                  setState(() {
                    currentScreen = const NotificationPage();
                    currentTab = 2;
                  });
                },
              ),
              IconButton(
                tooltip: 'Analytics',
                icon: Icon(Icons.analytics,
                    color: currentTab == 3
                        ? Colors.green.shade700
                        : Colors.black54),
                onPressed: () {
                  setState(() {
                    currentScreen = const WinnersPage();
                    currentTab = 3;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
