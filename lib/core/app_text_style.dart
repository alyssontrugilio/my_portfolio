import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static final TextStyle h1Desktop = GoogleFonts.inter(
    fontWeight: FontWeight.bold,
    fontSize: 60,
    height: 72 / 60,
    letterSpacing: -0.02,
  );

  static final TextStyle h1Tablet = GoogleFonts.inter(
    fontWeight: FontWeight.bold,
    fontSize: 48,
    height: 48 / 48,
    letterSpacing: -0.02,
  );

  static final TextStyle h1Mobile = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 36,
    height: 40 / 36,
  );

  static final TextStyle h2Desktop = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 36,
    height: 40 / 36,
    letterSpacing: -0.02,
  );

  static final TextStyle h2TabletMobile = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 18,
    height: 28 / 18,
    letterSpacing: -0.02,
  );

  static final TextStyle h3Desktop = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 30,
    height: 36 / 30,
    letterSpacing: -0.02,
  );

  static final TextStyle h3TabletMobile = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 24,
    height: 32 / 24,
    letterSpacing: -0.02,
  );

  static final TextStyle subtitleAll = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 20,
    height: 28 / 20,
  );

  static final TextStyle subtitleTabletMobile = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    height: 28 / 18,
  );

  static final TextStyle body1All = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    height: 28 / 18,
  );

  static final TextStyle body1TabletMobile = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 24 / 16,
  );

  static final TextStyle body2All = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 24 / 16,
  );

  static final TextStyle body2Underline = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 24 / 16,
    decoration: TextDecoration.underline,
  );

  static final TextStyle body2Medium = GoogleFonts.inter(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 24 / 16,
  );

  static final TextStyle body2SemiBold = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    height: 24 / 16,
  );

  static final TextStyle body3All = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 20 / 14,
  );

  static final TextStyle body3Medium = GoogleFonts.inter(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 20 / 14,
  );
}
