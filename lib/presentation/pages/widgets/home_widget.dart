import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'tools_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 94,
        right: 94,
        top: 252,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const _MyInfoWidget(),
                  const SizedBox(width: 78),
                  CircleAvatar(
                    radius: 200,
                    backgroundColor: Colors.grey,
                    child: ClipOval(
                      child: Image.network(
                        'https://avatars.githubusercontent.com/u/106694351?v=4',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.error,
                            size: 200,
                            color: Colors.redAccent,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 109,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Worked with',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  ToolsWidget(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MyInfoWidget extends StatelessWidget {
  const _MyInfoWidget();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 492,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Alysson Trugilio',
            style: GoogleFonts.raleway(
              color: Colors.white,
              fontSize: 44,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Intro text: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style: GoogleFonts.ibmPlexMono(
              color: const Color(0xff9C9C9C),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 63,
            width: 307,
            child: FilledButton(
              style: ButtonStyle(
                textStyle: MaterialStatePropertyAll(
                  GoogleFonts.ibmPlexMono(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                side: const MaterialStatePropertyAll(
                  BorderSide(
                    color: Color(0xff62BA1B),
                  ),
                ),
                shape: const MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text('Let’s get started'),
            ),
          )
        ],
      ),
    );
  }
}
