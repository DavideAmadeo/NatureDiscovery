import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nature_discovery/screens/landscape/components/expandable_text_widget.dart';
import '../../models/landscape.dart';

class LandscapeDetailScreen extends StatefulWidget {
  const LandscapeDetailScreen({super.key, required this.landscape});

  final Landscape landscape;

  @override
  State<LandscapeDetailScreen> createState() => _LandscapeDetailScreenState();
}

class _LandscapeDetailScreenState extends State<LandscapeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            widget.landscape.imageName,
            width: double.infinity,
            height: 250.h,
            fit: BoxFit.cover,
          ),

          DraggableScrollableSheet(
            initialChildSize: 0.55.h,
            minChildSize: 0.55.h,
            maxChildSize: 0.70.h,
            builder: (context, scrollController) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                decoration: BoxDecoration(
                  //color: const Color(0xFFfcf7ec),
                  color: const Color(0xFFf3f2f7),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25.r), topRight: Radius.circular(25.r)),
                  //boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10.r, offset: Offset(0.w, -5.h))]
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(widget.landscape.name, style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold, color: const Color(0xFF1a1e18)),),
                          const Spacer(),
                          Text("5.0", style: TextStyle(fontSize: 14.sp, color: const Color(0xFF1a1e18)),),
                        ],
                      ),
                      Row(
                        children: [
                          Text(widget.landscape.location, style: TextStyle(fontSize: 16.sp, color: const Color(0xFF1a1e18)),),
                          const Spacer(),
                          Text("143 reviews", style: TextStyle(fontSize: 14.sp, color: const Color(0xFF1a1e18), decoration: TextDecoration.underline),),
                        ],
                      ),

                      SizedBox(height: 16.h),

                      ExpandableTextWidget(text: widget.landscape.overview),

                      SizedBox(height: 16.h),

                      // SEZIONE CUSTOM GRID VIEW
                      Row(
                        children: [
                          // CARD MAPPA
                          SizedBox(
                            height: 200.h,
                            width: 160.w,
                            child: Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.r)),
                              clipBehavior: Clip.hardEdge,
                              child: Image.asset("assets/images/mappa_diga2.png", fit: BoxFit.cover),
                            ),
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              // CARD METEO
                              SizedBox(
                                height: 100.h,
                                width: 160.w,
                                child: Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.r)),
                                  color: const Color(0xFFffffff),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Gio, 13 Mar", style: TextStyle(fontSize: 14.sp, color: const Color(0xFF1a1e18))),
                                        Row(
                                          children: [
                                            Text("1°", style: TextStyle(fontSize: 30.sp, color: const Color(0xFF1a1e18))),
                                            const Spacer(),
                                            Icon(CupertinoIcons.sun_max_fill, color: const Color(0xFF1a1e18), size: 30.sp,),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 100.h,
                                width: 160.w,
                                child: Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.r)),
                                  color: const Color(0xFFffffff),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),

          // Icona per tornare indietro
          Positioned(
            top: 50,
            left: 16,
            child: IconButton.filledTonal(
              style: IconButton.styleFrom(
                  backgroundColor: const Color(0xFF1a1e18).withOpacity(0.7)
              ),
              icon: const Icon(CupertinoIcons.arrow_left, color: Color(0xFFffffff)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),

          // Icona slava
          Positioned(
            top: 50,
            right: 16,
            child: IconButton.filledTonal(
              style: IconButton.styleFrom(
                  backgroundColor: const Color(0xFF1a1e18).withOpacity(0.7)
              ),
              onPressed: () {
                setState(() {
                  if (widget.landscape.isFavorite) {
                    widget.landscape.isFavorite = !widget.landscape.isFavorite;
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: const Color(0xFF106635),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
                          content: Text('Rimosso dai preferiti', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold, color: const Color(0xFFffffff))),
                          duration: const Duration(milliseconds: 1500),
                          behavior: SnackBarBehavior.floating,
                        )
                    );
                  } else {
                    widget.landscape.isFavorite = !widget.landscape.isFavorite;
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: const Color(0xFF106635),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
                          content: Text('Aggiunto ai preferiti', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold, color: const Color(0xFFffffff))),
                          duration: const Duration(milliseconds: 1500),
                          behavior: SnackBarBehavior.floating,
                        )
                    );
                  }
                });
              },
              icon: widget.landscape.isFavorite ? const Icon(CupertinoIcons.bookmark_fill, color: Color(0xFFffffff)) : const Icon(CupertinoIcons.bookmark, color: Color(0xFFffffff)),
            ),
          ),
        ],
      ),
    );
  }
}
