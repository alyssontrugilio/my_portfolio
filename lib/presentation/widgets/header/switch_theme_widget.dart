import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SwitchThemeWidget extends StatelessWidget {
  final bool isMobile;
  const SwitchThemeWidget({
    super.key,
    this.isMobile = false,
  });

  @override
  Widget build(BuildContext context) {
    return isMobile
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Switch Theme',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff4B5563),
                ),
              ),
              MouseRegion(
                cursor: MaterialStateMouseCursor.clickable,
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.light_mode_outlined,
                    size: 30,
                  ),
                ),
              ),
            ],
          )
        : MouseRegion(
            cursor: MaterialStateMouseCursor.clickable,
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.light_mode_outlined,
                size: 30,
              ),
            ),
          );
  }
}
