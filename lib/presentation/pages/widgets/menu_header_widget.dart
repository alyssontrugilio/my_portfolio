import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';

class MenuHeaderWidget extends StatelessWidget {
  const MenuHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 1110,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 39, 39, 39),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const OptionTextHeaderWidget(
            text: 'Home',
          ),
          const OptionTextHeaderWidget(
            text: 'Case Studies',
          ),
          const OptionTextHeaderWidget(
            text: 'Testimonials',
          ),
          const OptionTextHeaderWidget(
            text: 'Recent work',
          ),
          const OptionTextHeaderWidget(
            text: 'Get in Touch',
          ),
          SvgPicture.asset(
            AppAssets.linkedinSvg,
          )
        ],
      ),
    );
  }
}

class OptionTextHeaderWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const OptionTextHeaderWidget({
    super.key,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: GoogleFonts.ibmPlexMono(
          color: const Color(0xff9C9C9C),
          fontSize: 14,
        ),
      ),
    );
  }
}
