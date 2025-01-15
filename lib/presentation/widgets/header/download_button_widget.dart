import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DownloadButtonWidget extends StatelessWidget {
  final bool isMobile;
  const DownloadButtonWidget({
    super.key,
    this.isMobile = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isMobile ? 50 : 36,
      child: FilledButton(
        onPressed: () {},
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Color(0xff111827)),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          ),
        ),
        child: Text(
          'Download CV',
          style: GoogleFonts.inter(
            fontSize: isMobile ? 20 : 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
