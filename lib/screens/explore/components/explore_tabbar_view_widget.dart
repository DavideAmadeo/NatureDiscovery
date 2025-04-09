import 'package:flutter/material.dart';
import 'package:nature_discovery/components/landscape_card_widget.dart';
import 'package:nature_discovery/models/landscape.dart';

class ExploreTabBarViewWidget extends StatelessWidget {
  const ExploreTabBarViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        // ALL
        ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: sampleDataLandscape.length,
          itemBuilder: (BuildContext context, int index) {
            return LandscapeCardWidget(landscape: sampleDataLandscape[index]);
          },
        ),

        // ONLY MOUNTAINS
        ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: sampleDataLandscape.where((landscape) => landscape.tag == 'Montagna').length,
          itemBuilder: (BuildContext context, int index) {
            var mountains = sampleDataLandscape.where((landscape) => landscape.tag == 'Montagna').toList();
            return LandscapeCardWidget(landscape: mountains[index]);
          },
        ),

        // ONLY LAKES
        ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: sampleDataLandscape.where((landscape) => landscape.tag == 'Lago').length,
          itemBuilder: (BuildContext context, int index) {
            var mountains = sampleDataLandscape.where((landscape) => landscape.tag == 'Lago').toList();
            return LandscapeCardWidget(landscape: mountains[index]);
          },
        ),

        // ONLY SEAS
        ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: sampleDataLandscape.where((landscape) => landscape.tag == 'Mare').length,
          itemBuilder: (BuildContext context, int index) {
            var mountains = sampleDataLandscape.where((landscape) => landscape.tag == 'Mare').toList();
            return LandscapeCardWidget(landscape: mountains[index]);
          },
        ),

        // ONLY FOREST
        ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: sampleDataLandscape.where((landscape) => landscape.tag == 'Foresta').length,
          itemBuilder: (BuildContext context, int index) {
            var mountains = sampleDataLandscape.where((landscape) => landscape.tag == 'Foresta').toList();
            return LandscapeCardWidget(landscape: mountains[index]);
          },
        ),

        // ONLY WATERFALLS
        ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: sampleDataLandscape.where((landscape) => landscape.tag == 'Cascata').length,
          itemBuilder: (BuildContext context, int index) {
            var mountains = sampleDataLandscape.where((landscape) => landscape.tag == 'Cascata').toList();
            return LandscapeCardWidget(landscape: mountains[index]);
          },
        ),
      ],
    );
  }
}
