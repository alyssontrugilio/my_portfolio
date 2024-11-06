import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/core.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1300,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            const Text(
              'Experience',
              style: TextStyle(color: Colors.white),
            ),
            const Text(
              'Here is a quick summary of my most recent experience',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 40),
            CardExperienceWidget(
              logo: Column(
                children: [
                  SvgPicture.asset(
                    height: 80,
                    AppAssets.treeunfe,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Treeunfe',
                    style: GoogleFonts.ibmPlexMono(
                      color: Colors.white60,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              title: 'Desenvolvedor Front-End Junior',
              description: 'Desenvolvimento de sistemas',
              date: 'Out 2023 - Present',
            ),
            const SizedBox(height: 40),
            CardExperienceWidget(
              logo: Image.asset(
                height: 60,
                AppAssets.skyGroup,
              ),
              title: 'Analista de suporte técnico',
              description: 'Suporte a filiais',
              date: 'Jan 2022 - 2023',
            ),
            const SizedBox(height: 40),
            CardExperienceWidget(
              logo: Image.asset(
                height: 60,
                AppAssets.skyGroup,
              ),
              title: 'Auxiliar de suporte técnico',
              description: 'Suporte a filiais',
              date: 'Jun 2021 - 2022',
            ),
            const SizedBox(height: 40),
            CardExperienceWidget(
              logo: Image.asset(
                height: 60,
                AppAssets.skyGroup,
              ),
              title: 'Auxiliar Administrativo',
              description: 'Auxiliando nas vendas',
              date: 'Jan 2018 - 2019',
            ),
          ],
        ),
      ),
    );
  }
}

class CardExperienceWidget extends StatelessWidget {
  final Widget logo;
  final String title;
  final String description;
  final String date;
  const CardExperienceWidget({
    super.key,
    required this.logo,
    required this.title,
    required this.description,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      height: 200,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 65, 64, 64),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        border: Border(),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: logo,
            ),
            Column(
              children: [
                Text(
                  title,
                  style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: GoogleFonts.ibmPlexMono(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            Text(
              date,
              style: GoogleFonts.raleway(
                color: Colors.white,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
