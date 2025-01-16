import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';

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
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.grayDark[600]
                      : AppColors.grayLight[600],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
