import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/presentation/pages/experience_widget.dart';

import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF252525),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    HomeWidget(),
                    SizedBox(height: 80),
                    ExperienceWidget(),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Center(
                child: MenuHeaderWidget(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
