import 'package:flutter/material.dart';
import 'package:predictandwin/presentation/bottom_nav/homepage/homepage_sections/purchase_gold/purchase_gold_page.dart';
import 'package:predictandwin/presentation/bottom_nav/homepage/lottery/lottery_detail_page.dart';
import 'package:predictandwin/presentation/bottom_nav/homepage/prediction/prediction_detail.dart';
import 'package:predictandwin/presentation/bottom_nav/homepage/profile/profile_page.dart';
import 'package:predictandwin/presentation/bottom_nav/homepage/weekly_lottery/weekly_lottery.dart';

import '../app_controller/bottom_navigation/bottom_navigation.dart';
import '../presentation/bottom_nav/homepage/fortune_wheel/fortune_wheel.dart';
import '../presentation/login/login_page.dart';
import '../utils/costume_page_route/costume_page_route.dart';

const String loginPageRoute = "/loginPage";
const String bottomNavigationRoute = "/bottomNavigation";
const String fortuneWheelPageRoute = "/fortuneWheelPage";
const String lotteryDetailPageRoute = "/lotteryDetailPage";
const String weeklylotteryPageRoute = "/weeklylotteryPage";
const String profilePageRoute = "/profilePage";
const String predictionDetailPageRoute = "/predictionDetailPage";
const String purchaseGoldPageRoute = "/purchaseGoldPage";

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case loginPageRoute:
        return MaterialPageRoute(builder: (context) => const LoginPage());

      case bottomNavigationRoute:
        return CostumPageRouteFadeIn(
            builder: (context) => const NavigationHandlerPage());
      case fortuneWheelPageRoute:
        return CostumPageRouteFadeIn(
            builder: (context) => const FortuneWheelPage());
      case lotteryDetailPageRoute:
        return CostumPageRouteFadeIn(
            builder: (context) => const LotteryDetailPage());
      case weeklylotteryPageRoute:
        return CostumPageRouteFadeIn(
            builder: (context) => const WeeklyLottery());
      case predictionDetailPageRoute:
        return CostumPageRouteFadeIn(
            builder: (context) => const PredictionDetailPage());
      case profilePageRoute:
        return CostumPageRouteFadeIn(builder: (context) => const ProfilePage());
      case purchaseGoldPageRoute:
        return CostumPageRouteFadeIn(
            builder: (context) => const PurchaseGoldPage());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => const Scaffold(
              body: Center(
                child: Text("error on route name"),
              ),
            ));
  }
}
