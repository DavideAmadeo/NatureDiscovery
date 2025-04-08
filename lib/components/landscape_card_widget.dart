import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nature_discovery/models/landscape.dart';
import 'package:nature_discovery/screens/landscape/landscape_detail_screen.dart';

class LandscapeCardWidget extends StatefulWidget {
  const LandscapeCardWidget({super.key, required this.landscape});

  final Landscape landscape;

  @override
  State<LandscapeCardWidget> createState() => _LandscapeCardWidgetState();
}

class _LandscapeCardWidgetState extends State<LandscapeCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0.h),
      child: Card(
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.r)),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LandscapeDetailScreen(landscape: widget.landscape)));
            },
            child: Stack(
              children: [
                Image.asset(
                  widget.landscape.imageName,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200.h,
                ),

                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.r), // Applica il border radius anche qui
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8), // Maggiore è il valore, più sfocato sarà
                        child: SizedBox(
                          width: double.infinity,
                          height: 70.h,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 16.0.w),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.landscape.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: const Color(0xFFffffff),
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined, color: const Color(0xFFffffff), size: 14.sp),
                                        Text(
                                          widget.landscape.location,
                                          style: TextStyle(
                                              color: const Color(0xFFffffff),
                                              fontSize: 14.sp
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),

                                const Spacer(),

                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if(widget.landscape.isFavorite) {
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
                                  icon: widget.landscape.isFavorite ? Icon(CupertinoIcons.bookmark_fill, size: 24.sp, color: const Color(0xFFffffff)) : Icon(CupertinoIcons.bookmark, size: 24.sp, color: const Color(0xFFffffff)),
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
          )
      ),
    );
  }
}
