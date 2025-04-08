import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../components/landscape_mini_card_widget.dart';
import '../../../models/landscape.dart';
import '../../favorites/favorites_screen.dart';

class FavoritesSection extends StatelessWidget {
  const FavoritesSection({super.key});

  @override
  Widget build(BuildContext context) {
    var favorites = sampleDataLandscape.where((landscape) => landscape.isFavorite == true).toList();

    return favorites.isNotEmpty ?
    Column(
      children: [
        Row(
          children: [
            Text('I tuoi preferiti', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
            const Spacer(),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const FavoritesScreen()));
              },
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xFF106635),
              ),
              child: Row(
                children: [
                  Text('See all ', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
                  Icon(CupertinoIcons.right_chevron, size: 16.sp,color: const Color(0xFF106635))
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 160.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: favorites.length,  // METTERE SUCCESSIVAMENTE itemCount: 9
            itemBuilder: (BuildContext context, int index) {
              return LandscapeMiniCardWidget(landscape: favorites[index]);
            },
          ),
        ),

        SizedBox(height: 8.h),
      ],
    ) : const SizedBox.shrink();
  }
}
