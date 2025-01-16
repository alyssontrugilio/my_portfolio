import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';

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
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.grayDark[900]
              : AppColors.grayLight[900],
        ),
      ),
    );
  }
}
