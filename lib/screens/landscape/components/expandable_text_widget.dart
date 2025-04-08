import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpandableTextWidget extends StatefulWidget {
  const ExpandableTextWidget({super.key, required this.text});

  final String text;

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final int maxLines = isExpanded ? widget.text.length : 4;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          maxLines: maxLines,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 14.sp, color: const Color(0xFF1a1e18)),
        ),

        SizedBox(height: 4.h),

        TextButton(
          onPressed: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            isExpanded ? "Read less" : "Read more",
            style: TextStyle(
                fontSize: 14.sp,
                color: const Color(0xFF1a1e18),
                decoration: TextDecoration.underline
            ),
          ),
        ),
      ],
    );
  }
}
