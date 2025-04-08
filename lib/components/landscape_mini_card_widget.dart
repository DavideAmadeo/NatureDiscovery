import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nature_discovery/models/landscape.dart';
import '../screens/landscape/landscape_detail_screen.dart';

class LandscapeMiniCardWidget extends StatelessWidget {
  const LandscapeMiniCardWidget({super.key, required this.landscape});

  final Landscape landscape;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => LandscapeDetailScreen(landscape: landscape)));
        },
        child: Stack(
          children: [
            Image.asset(
              landscape.imageName,
              fit: BoxFit.cover,
              width: 180.w,
              height: 160.h,
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.r),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 10.0.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              landscape.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold, color: const Color(0xFFffffff)),
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined, size: 12.sp, color: const Color(0xFFffffff)),
                                Expanded(
                                  child: Text(
                                      landscape.region,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12.sp, color: const Color(0xFFffffff))
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
