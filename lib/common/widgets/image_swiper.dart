import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageSwiper extends StatefulWidget {
  const ImageSwiper({super.key});

  @override
  State<ImageSwiper> createState() => _ImageSwiperState();
}

class _ImageSwiperState extends State<ImageSwiper> {
  final items = <String>[
    'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',
    'https://t7.baidu.com/it/u=1951548898,3927145&fm=193&f=GIF',
    'https://t7.baidu.com/it/u=1831997705,836992814&fm=193&f=GIF',
    'https://t7.baidu.com/it/u=2405382010,1555992666&fm=193&f=GIF',
    'https://t7.baidu.com/it/u=2582370511,530426427&fm=193&f=GIF',
  ];

  int index = 0;

  Color colorOf(int i) =>
      i == index ? const Color.fromRGBO(0, 163, 255, 1) : Colors.transparent;
  double diamOf(int i) => i == index ? 26.w : 16.w;
  final pageController = PageController();

  void onPageChanged(int i) {
    index = i;
    setState(() {});
  }

  void onTap(int i) {
    index = i;
    pageController.jumpToPage(i);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: pageController,
            itemCount: items.length,
            itemBuilder: (_, i) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    items[i],
                  ),
                ),
              ),
            ),
            onPageChanged: onPageChanged,
          ),
        ),
        SizedBox(
          height: 72.w,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (_, i) => InkWell(
              radius: .0,
              highlightColor: Colors.transparent,
              onTap: () => onTap(i),
              child: Container(
                width: diamOf(i),
                height: diamOf(i),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: colorOf(i),
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      items[i],
                    ),
                  ),
                ),
              ),
            ),
            separatorBuilder: (_, i) => SizedBox(width: 13.w),
          ),
        ),
      ],
    );
  }
}
