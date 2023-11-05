import 'package:flutter/material.dart';
import 'package:flutter_aicamera/common/values/image_path.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NavButton extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final GestureTapCallback? onTap;
  final List<Color>? gradientColors;

  const NavButton({
    super.key,
    this.title = 'title',
    this.subtitle = 'subtitle',
    this.color = Colors.red,
    this.onTap,
    this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: .0,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 36.w,
          vertical: 22.w,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              offset: const Offset(10, 10),
              blurRadius: 20,
              color: color.withOpacity(.1),
            ),
          ],
          gradient: RadialGradient(
            center: Alignment.topLeft,
            radius: 2,
            colors: gradientColors ?? [],
          ),
          border: Border.all(
            width: .3,
            color: Colors.grey,
          ),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  title,
                  style: GoogleFonts.roboto(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.roboto(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Image.asset(
              ImagePath.homeArrowRight,
              width: 11.w,
              height: 27.w,
            ),
          ],
        ),
      ),
    );
  }
}
