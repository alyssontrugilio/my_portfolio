import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';

class DownloadButtonWidget extends StatelessWidget {
  final bool isMobile;
  const DownloadButtonWidget({
    super.key,
    this.isMobile = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
      height: isMobile ? 50 : 36,
      child: FilledButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
              isDarkTheme ? AppColors.grayDark[900] : AppColors.grayLight[900]),
          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
        ),
        child: Text(
          'Download CV',
          style: GoogleFonts.inter(
            fontSize: isMobile ? 20 : 16,
            fontWeight: FontWeight.w500,
            color:
                isDarkTheme ? AppColors.grayDark[50] : AppColors.grayLight[50],
          ),
        ),
      ),
    );
  }
}
