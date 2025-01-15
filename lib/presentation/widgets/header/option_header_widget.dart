import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionHeaderWidget extends StatelessWidget {
  final String text;
  const OptionHeaderWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Row(
        children: [
          MouseRegion(
            cursor: MaterialStateMouseCursor.clickable,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                text,
                style: GoogleFonts.inter(
                  fontSize: constraints.maxWidth < 900 ? 20 : 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff4B5563),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 24,
          )
        ],
      ),
    );
  }
}
