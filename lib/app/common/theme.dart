import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData darkTheme = ThemeData.dark().copyWith(
  backgroundColor: Colors.black,
  primaryColor: Color.fromARGB(255, 114, 0, 38).withOpacity(0.5),
  primaryColorLight: Colors.white60,
  textTheme: TextTheme(
    bodyMedium: GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    bodySmall: GoogleFonts.roboto(
      textStyle: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
        color: Colors.grey,
        fontStyle: FontStyle.italic,
      ),
    ),
    labelMedium: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    labelLarge: GoogleFonts.allura(
      textStyle: TextStyle(
        shadows: <Shadow>[
          Shadow(
            offset: Offset(5.0, 5.0),
            blurRadius: 3.0,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          Shadow(
            offset: Offset(5.0, 5.0),
            blurRadius: 8.0,
            color: Color.fromARGB(255, 103, 2, 49),
          ),
        ],
        fontSize: 65.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    displayLarge: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 25.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    displayMedium: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    displaySmall: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    headlineLarge: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 25.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    headlineMedium: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
  ),
);

final ThemeData lightTheme = ThemeData.light().copyWith(
  backgroundColor: Colors.white,
  primaryColor: Color.fromARGB(255, 114, 0, 38).withOpacity(0.5),
  primaryColorLight: Colors.black54,
  textTheme: TextTheme(
    bodyMedium: GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
    bodySmall: GoogleFonts.roboto(
      textStyle: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
        color: Colors.grey,
      ),
    ),
    labelMedium: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 25.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    labelLarge: GoogleFonts.allura(
      textStyle: TextStyle(
        shadows: <Shadow>[
          Shadow(
            offset: Offset(5.0, 5.0),
            blurRadius: 3.0,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          Shadow(
            offset: Offset(5.0, 5.0),
            blurRadius: 8.0,
            color: Color.fromARGB(255, 103, 2, 49),
          ),
        ],
        fontSize: 65.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    displayLarge: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 25.sp,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
    displayMedium: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
    displaySmall: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
    headlineLarge: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 25.sp,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
    headlineMedium: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
  ),
);
