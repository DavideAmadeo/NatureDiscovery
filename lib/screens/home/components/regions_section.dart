import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nature_discovery/screens/regions/region_screen.dart';

class RegionsSection extends StatelessWidget {
  const RegionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> regions = ['Liguria', 'Lombardia', 'Puglia', 'Trentino Alto Adige', 'Umbria', 'Veneto'];
    return Column(
      children: [
        Row(
          children: [
            Text('Scopri per regione', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
            const Spacer(),
            // ANCHE SE VUOTO, MI SERVE PER AVERE GLI STESSI MARGINI DELLE ALTRE SEZIONI
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
          height: 38.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: regions.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                borderRadius: BorderRadius.circular(10.r),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegionScreen(regionName: regions[index])));
                },
                child: SizedBox(
                  height: 38.h,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
                    color: const Color(0xFF106635),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(regions[index], style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold, color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),

        /*SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                height: 40.h,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text('🐻 Abruzzo', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text('⛰️ Basilicata', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text('🌊 Calabria', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text('🌋 Campania', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text('🍝 Emilia-Romagna', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text('🏔️ Friuli Venezia Giulia', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text('🏛️ Lazio', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text('🌅 Liguria', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RegionScreen(regionName: 'Lombardia')));
                },
                child: SizedBox(
                  height: 40.h,
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text('🏙️ Lombardia', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),*/

        SizedBox(height: 8.h),
      ],
    );
  }
}
