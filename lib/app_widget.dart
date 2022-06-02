import 'package:example/presentation/home_view.dart';
import 'package:example/routes/app_routes.dart';
import 'package:example/widgets/bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, widget) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: BottomNavBarWidget.route,
          onGenerateRoute: (settings) {
            return AppRoutes.onGenerateRoute(
              context: context,
              settings: settings,
            );
          },
        );
      },
    );
  }
}
