import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoTextWidget extends StatelessWidget {
  const LogoTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        '<AT />',
        style: GoogleFonts.inter(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: const Color(0xff111827),
        ),
      ),
    );
  }
}
