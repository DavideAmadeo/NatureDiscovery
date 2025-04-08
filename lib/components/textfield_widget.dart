import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({super.key, required this.label, required this.icon});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      //cursorColor: const Color(0xFF6BCC71),
      cursorColor: const Color(0xFF1a1e18),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              //borderSide: const BorderSide(color: Color(0xFF6BCC71))
              borderSide: const BorderSide(color: Color(0xFF1a1e18))
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.3),
              borderSide: BorderSide(color: const Color(0xFF1a1e18), width: 2.0.w)
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 8.0.h),
          labelText: label,
          labelStyle: TextStyle(color: const Color(0xFF1a1e18), fontSize: 14.sp),
          suffixIcon: Icon(icon, color: const Color(0xFF1a1e18))
      ),
      style: const TextStyle(color: Color(0xFF1a1e18)),
    );
  }
}
