import 'package:flutter/material.dart';
import 'package:flutter_aicamera/common/values/image_path.dart';
import 'package:flutter_aicamera/common/widgets/image_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TryPage extends StatelessWidget {
  const TryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: ImageSwiper(),
                ),
                Positioned(
                  right: 29.w,
                  bottom: 118.w,
                  child: _buildFlash(),
                ),
              ],
            ),
          ),
          _buildActions(),
          SizedBox(height: 50.w)
        ],
      ),
    );
  }

  Widget _buildFlash() => Container(
        width: 27.w,
        height: 52.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        alignment: Alignment.center,
        child: Image.asset(
          ImagePath.tryFlash,
          width: 12.w,
          height: 20.w,
          fit: BoxFit.cover,
        ),
      );

  Widget _buildActions() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            ImagePath.tryImage,
            width: 18.w,
            height: 18.w,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 50.w),
          Container(
            width: 100.w,
            height: 100.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(255, 237, 144, 1),
            ),
            alignment: Alignment.center,
            child: Container(
              width: 50.w,
              height: 50.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(255, 184, 0, 1),
              ),
              alignment: Alignment.center,
              child: Image.asset(
                ImagePath.tryCamera,
                width: 22.w,
                height: 18.w,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 50.w),
          Image.asset(
            ImagePath.tryChange,
            width: 22.w,
            height: 18.w,
            fit: BoxFit.cover,
          ),
        ],
      );
}
