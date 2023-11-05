import 'package:flutter/material.dart';
import 'package:flutter_aicamera/common/routes/app_routes.dart';
import 'package:flutter_aicamera/pages/home_page.dart';
import 'package:flutter_aicamera/pages/try_page.dart';

class AppPages {
  AppPages._();
  static final routes = <String, WidgetBuilder>{
    Routes.HOME: (_) => const HomePage(),
    Routes.TRY: (_) => const TryPage(),
  };
}
