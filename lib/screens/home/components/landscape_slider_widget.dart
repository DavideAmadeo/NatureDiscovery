import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nature_discovery/models/landscape.dart';
import 'package:nature_discovery/screens/landscape/landscape_detail_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandscapeSliderWidget extends StatefulWidget {
  const LandscapeSliderWidget({super.key});

  @override
  State<LandscapeSliderWidget> createState() => _LandscapeSliderWidgetState();
}

class _LandscapeSliderWidgetState extends State<LandscapeSliderWidget> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r)),
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(50.r))),
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(50.r), bottom: Radius.circular(20.r))),
      child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              width: double.infinity,
              height: 300.h,
              child: PageView.builder(
                controller: _pageController,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LandscapeDetailScreen(landscape: sampleDataLandscape[index])));
                      },
                      child: Stack(
                        //alignment: Alignment.centerLeft,
                        children: [
                          Image.asset(sampleDataLandscape[index].imageName, fit: BoxFit.cover, height: 300.h),
                          Positioned(
                            bottom: 40,
                            left: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(sampleDataLandscape[index].name, style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w900, color: Colors.white)),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined, size: 16.sp, color: const Color(0xFFffffff)),
                                    Text(sampleDataLandscape[index].region, style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w900, color: const Color(0xFFffffff))),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                  );
                },
              ),
            ),

            // INDICATORI DI PAGINA
            Positioned(
                bottom: 16,
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 4,
                  effect: ExpandingDotsEffect(
                      dotHeight: 8.h,
                      dotWidth: 8.w,
                      //activeDotColor: const Color(0xFF106635),
                      activeDotColor: Colors.white,
                      dotColor: Colors.white.withOpacity(0.5)
                  ),
                )
            )
          ]
      ),
    );
  }
}