import 'package:flutter/material.dart';
import 'package:flutter_aicamera/common/routes/app_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'pages/home_page.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(386, 736),
      builder: (_, __) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: AppPages.routes,
        home: const HomePage(),
      ),
    );
  }
}
