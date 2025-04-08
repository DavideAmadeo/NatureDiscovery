import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nature_discovery/components/landscape_mini_card_widget.dart';
import 'package:nature_discovery/models/landscape.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var favorites = sampleDataLandscape.where((element) => element.isFavorite == true).toList();

    return Scaffold(
        backgroundColor: const Color(0xFFf3f2f7),
        appBar: AppBar(
          title: Text('Preferiti', style: TextStyle(fontSize: 16.sp)),
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: GridView.builder(
            itemCount: favorites.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
            ),
            itemBuilder: (context, index) {
              return LandscapeMiniCardWidget(landscape: favorites[index]);
            },
          ),
        )
    );
  }
}
