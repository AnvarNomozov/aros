import 'package:example/presentation/about_screen.dart';
import 'package:example/presentation/home_view.dart';
import 'package:example/widgets/bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static PageRoute<dynamic>? onGenerateRoute({
    required BuildContext context,
    required RouteSettings settings,
  }) {
    switch (settings.name) {
      case HomeView.route:
        return getHomeScreen();
      case BottomNavBarWidget.route:
        return getBottomBar();
      case AboutScreen.route:
        return getAboutScreen();
    }
  }

  static PageRoute getHomeScreen() => MaterialPageRoute(
        builder: (_) => HomeView(),
      );
  static PageRoute getBottomBar() => MaterialPageRoute(
        builder: (_) => BottomNavBarWidget(),
      );
  static PageRoute getAboutScreen() => MaterialPageRoute(
        builder: (_) => AboutScreen(),
      );
}
