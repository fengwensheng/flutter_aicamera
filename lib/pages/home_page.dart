import 'package:flutter/material.dart';
import 'package:flutter_aicamera/common/extensions/context_ext.dart';
import 'package:flutter_aicamera/common/routes/app_routes.dart';
import 'package:flutter_aicamera/common/values/image_path.dart';
import 'package:flutter_aicamera/common/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 70.5.w),
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: Image.asset(
              ImagePath.homeDrawer,
              width: 22.w,
              height: 12.5.w,
            ),
          ),
          SizedBox(height: 29.w),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 47.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Virtual',
                  style: GoogleFonts.lora(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Hair Color',
                  style: GoogleFonts.lora(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'AI Camera App',
                  style: GoogleFonts.roboto(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(138, 138, 138, 1),
                  ),
                ),
                SizedBox(height: 20.w),
                Text(
                  "It's time for change! Try a new hair shade has never been easier! have a fun with this app you can choose best hair color for yourself with our AI technology.",
                  style: GoogleFonts.roboto(
                    fontSize: 18.sp,
                    color: const Color.fromRGBO(138, 138, 138, 1),
                  ),
                ),
                SizedBox(height: 46.w),
                NavButton(
                  title: 'Try Now Free',
                  subtitle: 'Limited access of filters',
                  gradientColors: const [
                    Color.fromRGBO(178, 227, 255, 1),
                    Color.fromRGBO(0, 163, 255, 1),
                  ],
                  onTap: () {
                    context.to(Routes.TRY);
                  },
                ),
                SizedBox(height: 25.w),
                const NavButton(
                  title: 'Buy Premium Now',
                  subtitle: 'Get unlimited access to all filters',
                  gradientColors: [
                    Color.fromRGBO(255, 214, 0, 0.1),
                    Color.fromRGBO(255, 184, 0, 1),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
