import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class IconTechWidget extends StatelessWidget {
  final String icon;
  final String title;
  const IconTechWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          icon,
          width: 50,
          height: 50,
          placeholderBuilder: (context) => const CircularProgressIndicator(),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: GoogleFonts.ibmPlexMono(
            color: Colors.white60,
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}
