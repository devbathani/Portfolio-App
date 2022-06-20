import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FloatingContainer extends StatelessWidget {
  const FloatingContainer({
    Key? key,
    required this.assetName,
  }) : super(key: key);

  final String assetName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 50.w,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Image.network(
          assetName,
          height: 25.h,
          width: 8.w,
          fit: BoxFit.cover
        ),
      ),
    );
  }
}
