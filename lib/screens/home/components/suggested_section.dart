import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../components/landscape_mini_card_widget.dart';
import '../../../models/landscape.dart';

class SuggestedSection extends StatelessWidget {
  const SuggestedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Suggeriti', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
            const Spacer(),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xFF106635),
              ),
              child: Text('', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
            )
          ],
        ),
        SizedBox(
          height: 160.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: sampleDataLandscape.length,  // METTERE SUCCESSIVAMENTE itemCount: 9
            itemBuilder: (BuildContext context, int index) {
              return LandscapeMiniCardWidget(landscape: sampleDataLandscape[index]);
            },
          ),
        ),

        SizedBox(height: 8.h),
      ],
    );
  }
}
