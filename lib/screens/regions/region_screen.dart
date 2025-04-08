import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nature_discovery/components/landscape_card_widget.dart';
import 'package:nature_discovery/models/landscape.dart';

class RegionScreen extends StatelessWidget {
  const RegionScreen({super.key, required this.regionName});

  final String regionName;

  @override
  Widget build(BuildContext context) {
    var landscape = sampleDataLandscape.where((element) => element.region == regionName).toList();

    return Scaffold(
      backgroundColor: const Color(0xFFf3f2f7),
      appBar: AppBar(
        title: Text(regionName, style: TextStyle(fontSize: 16.sp)),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: landscape.length,
        itemBuilder: (BuildContext context, int index) {
          return LandscapeCardWidget(landscape: landscape[index]);
        },
      ),
    );
  }
}
